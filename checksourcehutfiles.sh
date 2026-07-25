#!/bin/sh

scriptDir="$(realpath --canonicalize-missing "$0/.." --relative-to="$PWD" )"

. "$scriptDir/utils.sh"

echo "package,packageLink,ebuildVersion,sourceVersion,sourceTagsLink,maintainerEmail,repologyEmail" > .sourcehut-raw-data.csv

findRemote "$1" 'sourcehut' | while IFS='' read -r line; do
    rootDir="$(echo "$line" | awk -F '\t' '{print $1}' )"
    remote="$(echo "$line" | awk -F '\t' '{print $2}' )"
    ebuildVersion="$(getLatestEbuildVersion "$rootDir")"
    # echo "$remote"
    [ -n "$ebuildVersion" ] && {
        latestVersion="$(
            curl --silent "https://git.sr.ht/$remote/refs/rss.xml" |
                head -n1 |
                sed -nE 's/.+<title>([^<]+)<\/title>.+/\1/p'
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
                "https://git.sr.ht/$remote/refs"\
                "$maintainerEmail"\
                "$repologyEmail"\
            >> .sourcehut-raw-data.csv
        }
        # @formatter:on
    }
done
