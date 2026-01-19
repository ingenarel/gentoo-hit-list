#!/bin/sh

[ -z "$CODEBERG_TOKEN" ] && {
    echo "No valid CODEBERG_TOKEN"
    exit 1
}

scriptDir="$(realpath --canonicalize-missing "$0/.." --relative-to="$PWD" )"

. "$scriptDir/utils.sh"

echo "package,packageLink,ebuildVersion,sourceVersion,sourceTagsLink,maintainerEmail,repologyEmail" > .codeberg-raw-data.csv

findRemote "$1" 'codeberg' | while IFS='' read -r line; do
    rootDir="$(echo "$line" | awk -F '\t' '{print $1}' )"
    remote="$(echo "$line" | awk -F '\t' '{print $2}' )"
    ebuildVersion="$(getLatestEbuildVersion "$rootDir")"
    [ -n "$ebuildVersion" ] && {
        latestVersion="$(
            curl\
                --silent\
                -H 'accept: application/json' \
                -H "Authorization: token $CODEBERG_TOKEN"\
                --url "https://codeberg.org/api/v1/repos/$remote/tags?limit=2" |
            grep -oE '"name":\s*"[^"]+"' |
            # the extra grep is needed because the regex for sed for some fucking reason only outputs the last tag
            sed -nE 's/"name":\s*"v?([^"]+)"/\1/p; /(nightly|continuous|test-build|weekly|latest|current)/d' |
            head -n1
        )"
        {
            [ -n "$latestVersion" ]\
                    &&
            ! printf '%s\n%s\n' "$latestVersion" "$ebuildVersion"\
                    |
            sort --check=quiet --version-sort
        #@formatter:off
        } && {
            basePkgName="$(getBasePkgName "$rootDir")"
            maintainerEmail="$( maintainerCheck "$rootDir" )"
            repologyEmail="-"
            [ "$maintainerEmail" != '-' ] &&
            repologyEmail="https://repology.org/maintainer/$maintainerEmail"
            printf\
                "%s,%s,%s,%s,%s,%s,%s\n"\
                "$basePkgName"\
                "$(git -C "$1" config --get remote.origin.url | sed -E 's/(\.git)?$//' | head -n1)/tree/dev/$basePkgName"\
                "$ebuildVersion"\
                "$latestVersion"\
                "https://codeberg.org/$remote/tags"\
                "$maintainerEmail"\
                "$repologyEmail"\
            >> .codeberg-raw-data.csv
        }
        #@formatter:on
    }
done
