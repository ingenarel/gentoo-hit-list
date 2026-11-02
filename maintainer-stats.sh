#!/usr/bin/env bash
scriptDir="$(realpath --canonicalize-missing "$0/.." --relative-to="$PWD" )"

. "$scriptDir/utils.sh"

MAX_JOBS=10

generate_line(){
    local last_commit="$(
            {
                git -C "$repo_path" --no-pager log --format=format:'%at,%ar,%H,%ae%n' --max-count 1 --author "$1"
                git -C "$repo_path" --no-pager log --format=format:'%at,%ar,%H,%ae%n' --max-count 1 --committer "$1"
            } | sort | tail -n1
        )"
    if [ -n "${last_commit}" ]; then
        echo "$last_commit"
    else
        echo "0,0,NO COMMIT FOUND BY THIS EMAIL,$1"
    fi
}

while IFS='' read -r line; do
    repo_path="$(echo "${line}" | awk '{print $1}' | xargs realpath )"
    find . -name 'metadata.xml' -exec dirname {} \; | while read -r line; do
        maintainerCheck "$line"
        printf '\n'
    done |
    sort |
    uniq |
    grep --invert-match -E '^(-|\s*)$' | while IFS='' read -r line; do
        generate_line "$line" &
        LAST_PID="$!"
        if [[ "$(jobs -r | wc -l)" -ge "$MAX_JOBS" ]]; then
            wait "$LAST_PID"
        fi
    done |
    sort |
    uniq
done < "$scriptDir/config" > .maintainer-stats.csv
