#!/bin/sh

scriptDir="$(realpath --canonicalize-missing "$0/.." --relative-to="$PWD" )"

. "$scriptDir/utils.sh"

generate_line(){
    last_commit="$(
            # {
            #     git -C "$REPO_PATH" --no-pager log --format=format:'%at|%ar|%H|%ae%n' --max-count 1 --author "$1"
            #     git -C "$REPO_PATH" --no-pager log --format=format:'%at|%ar|%H|%ae%n' --max-count 1 --committer "$1"
            # } | sort | tail -n1
                git -C "$REPO_PATH" --no-pager log --format=format:'%at|%ar|%H|%ae%n' --max-count 1 --committer "$1"
        )"
    if [ -n "${last_commit}" ]; then
        last_commit="$(echo "$last_commit" | sed -E 's/,//g; s/\|/,/g')"
        # echo "${last_commit//|/,}"
        echo "$last_commit"
        echo "last commit: '$last_commit'" 1>&2
    else
        echo "0,0,NO COMMIT FOUND BY THIS EMAIL,$1"
    fi
}

echo "unix timestamp,relative time,commit hash,email" > ./.maintainer-stats.csv

while IFS='' read -r line; do
    REPO_PATH="$(echo "${line}" | awk '{print $1}' | xargs realpath )"
    find . -name 'metadata.xml' -exec dirname {} \; | while read -r line; do
        echo "line in maintainercheck: '$line'" 1>&2
        maintainerCheck "$line"
        printf '\n'
    done |
    sort |
    uniq |
    while IFS='' read -r line; do
        # grep --invert-match -E '^(-|\s*)$' | while IFS='' read -r line; do
        echo "line in generate_line: '$line'" 1>&2
        generate_line "$line"
    done |
    sort |
    uniq
done < "$scriptDir/config" >> ./.maintainer-stats.csv
