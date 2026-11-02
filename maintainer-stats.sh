#!/bin/sh
scriptDir="$(realpath --canonicalize-missing "$0/.." --relative-to="$PWD" )"

. "$scriptDir/utils.sh"

while IFS='' read -r line; do
    repo_path="$(echo "${line}" | awk '{print $1}' | xargs realpath )"
    find . -name 'metadata.xml' -exec dirname {} \; | while read -r line; do
        maintainerCheck "$line"
        printf '\n'
    done |
    sort |
    uniq |
    grep --invert-match -E '^(-|\s*)$' | while IFS='' read -r line; do
        last_commit="$(
            {
                git -C "$repo_path" --no-pager log --format=format:'%at,%ar,%H,%ae%n' --max-count 1 --author "$line"
                git -C "$repo_path" --no-pager log --format=format:'%at,%ar,%H,%ae%n' --max-count 1 --committer "$line"
            } | sort | tail -n1
        )"
        if [ -n "${last_commit}" ]; then
            # printf '%s' last_commit
            :
        else
            printf "%s\n" "$line"
        fi
    done |
    sort |
    uniq
done < "$scriptDir/config"
