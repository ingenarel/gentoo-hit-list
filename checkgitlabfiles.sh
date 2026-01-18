#!/bin/sh

[ -z "$GLAB_TOKEN" ] && {
    echo "No valid GLAB_TOKEN"
    exit 1
}

scriptDir="$(realpath --canonicalize-missing "$0/..")"

. "$scriptDir/utils.sh"

echo "package,packageLink,ebuildVersion,sourceVersion,sourceTagsLink,maintainerEmail,repologyEmail" > .gitlab-raw-data.csv

findRemote "$1" 'gitlab' | while IFS='' read -r line; do
    rootDir="$(echo "$line" | awk -F '\t' '{print $1}' )"
    remote="$(echo "$line" | awk -F '\t' '{print $2}' )"
    ebuildVersion="$(getLatestEbuildVersion "$rootDir")"
    [ -n "$ebuildVersion" ] && {
        latestVersion="$(
            curl\
                --silent\
                --header "PRIVATE-TOKEN: $GLAB_TOKEN"\
                --url "https://gitlab.com/api/v4/projects/$(
                        printf "%s" "$remote" | sed -e 's/\//%2f/g'
                    )/repository/tags" |
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
                "https://gitlab.com/$remote/tags"\
                "$maintainerEmail"\
                "$repologyEmail"\
            >> .gitlab-raw-data.csv
        }
        #@formatter:on
    }
done
