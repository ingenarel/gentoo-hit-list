#!/bin/sh

scriptDir="$(realpath --canonicalize-missing "$0/..")"

. "$scriptDir/utils.sh"

echo "package,packageLink,ebuildVersion,sourceVersion,sourceTagsLink,maintainerEmail,repologyEmail" > .github-raw-data.csv

findRemote "$1" 'github' | while IFS='' read -r line; do
    rootDir="$(echo "$line" | awk -F '\t' '{print $1}' )"
    remote="$(echo "$line" | awk -F '\t' '{print $2}' )"
    ebuildVersion="$(getLatestEbuildVersion "$rootDir")"
    # using curl should be faster but gh should be better
    [ -n "$ebuildVersion" ] && {
        latestVersion="$(
            gh release\
                        --repo "$remote"\
                        list\
                        --limit 2\
                        --order desc\
                        --json tagName\
                        --jq '.[].tagName'\
                        |
            sed -E '/(nightly|continuous|test-build|weekly|latest|current)/d'\
                        |
            head -n1\
                        |
            sed -E 's/v?(.+)/\1/'
            # curl --silent -L -H "Accept: application/vnd.github+json"\
                    #     -H "Authorization: Bearer $GH_TOKEN"\
                    #     -H "X-GitHub-Api-Version: 2022-11-28"\
                    #     "https://api.github.com/repos/$properRemote/tags?per_page=2&page=1"\
                    #     |
            # sed -nE '/nightly/d; s/\s*"name":\s*"v?(\S+)".*/\1/p'\
                    #     |
            # head -n1
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
                "https://github.com/$remote/tags"\
                "$maintainerEmail"\
                "$repologyEmail"\
            >> .github-raw-data.csv
        }
        #@formatter:on
    }
done
