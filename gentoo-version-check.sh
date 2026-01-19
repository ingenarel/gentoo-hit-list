#!/bin/sh

[ -z "$GH_TOKEN" ] && {
    echo "No valid github token" >&2
    gh auth status > /dev/null 2>&1 || {
        echo "gh cli isn't authenticated" >&2
        exit
    }
}

scriptDir="$(realpath --canonicalize-missing "$0/.." --relative-to="$PWD" )"

while IFS='' read -r line; do
    repoName="$(echo "$line" | awk '{print $1}')"
    repoBranch="$(echo "$line" | awk '{print $2}')"
    repoLink="$(echo "$line" | awk '{print $3}')"
    git\
        clone\
        --single-branch\
        --depth 1\
        --branch "$repoBranch"\
        "$repoLink"\
        "$scriptDir/$repoName" > /dev/null ||
    git -C "$scriptDir/$repoName" pull > /dev/null
    [ "$1" != dry ] && {
        "$scriptDir/checkgithubfiles.sh" "$scriptDir/$repoName" &
        "$scriptDir/checkgitlabfiles.sh" "$scriptDir/$repoName" &
        "$scriptDir/checkcodebergfiles.sh" "$scriptDir/$repoName" &
    }
done < "$scriptDir/config"

echo "waiting for scripts to complete" >&2
wait
echo "waiting finished!" >&2

readMeData="$( cat "$scriptDir/README.md" )"
rm "$scriptDir/README.md"
tableHasStarted=false
echo "$readMeData" | while IFS='' read -r line; do
    case "$line" in
        '<!-- start -->')
            tableHasStarted=true
            printf "%s\n" "$line" >> "$scriptDir/README.md"
            while IFS='' read -r line; do
                repoName="$(echo "$line" | awk '{print $1}')"
                repoBranch="$(echo "$line" | awk '{print $2}')"
                repoLink="$(echo "$line" | sed -n -E 's/.*\s+(\S+)$/\1/p')"
                echo "<details>"
                echo "    <summary><a href=\"$repoLink/tree/$repoBranch\">$repoName $repoBranch branch</a></summary>"
                echo ""
                echo "| Package | Downstream | Upstream | Maintainer |"
                echo "| ------- | ---------- | -------- | ---------- |"
                {
                    tail -n +2 "$scriptDir/.github-raw-data.csv"
                    tail -n +2 "$scriptDir/.gitlab-raw-data.csv"
                    tail -n +2 "$scriptDir/.codeberg-raw-data.csv"
                } |
                while IFS=',' read -r\
                    package\
                    packageLink\
                    ebuildVersion\
                    sourceVersion\
                    sourceTagsLink\
                    maintainerEmail\
                    repologyEmail
                do
                    printf "| %s | %s | %s | %s |\n"\
                        "[$package]($packageLink)"\
                        "$ebuildVersion"\
                        "[$sourceVersion]($sourceTagsLink)"\
                        "[$maintainerEmail]($repologyEmail)"
                done |
                sort
                echo ""
                echo "</details>"
            done < "$scriptDir/config" >> "$scriptDir/README.md"
            ;;
        '<!-- end -->')
            tableHasStarted=false
            printf "%s\n" "$line" >> "$scriptDir/README.md"
            ;;
        *)
            $tableHasStarted || printf "%s\n" "$line" >> "$scriptDir/README.md"
            ;;
    esac
done
