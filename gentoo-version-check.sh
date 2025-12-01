#!/usr/bin/sh

[ -z "$GH_TOKEN" ] && {
    echo "No valid github token"
    exit 1
}

git clone --single-branch --depth 1 --branch dev https://github.com/gentoo/guru.git > /dev/null || git -C ./guru pull > /dev/null
# git clone --single-branch --depth 1 --branch dev https://github.com/gentoo/gentoo.git > /dev/null || git -C ./gentoo pull > /dev/null

printTable() {
    echo "| Package | Downstream | Upstream | Maintainer |"
    echo "| --- | --- | --- | --- |"

    find "$1" -maxdepth 2 -type d -regextype posix-extended -regex '.*/.+/.+' | while IFS='' read -r packageName; do
        remoteLine="$(grep '<remote-id type="github">' "$packageName/metadata.xml" 2>/dev/null)"
        [ -n "$remoteLine" ] && {
            properRemote="$(
            echo "$remoteLine"\
                |
            sed -E 's/^.*<remote-id\s*type="github">\s*(\S+\/\S+)\s*<\/remote-id>.*$/\1/' 2>/dev/null\
                |
            head -n1
        )"
            find "$packageName" -maxdepth 1 -type f -regex '.*\.ebuild' | sort -r | while IFS='' read -r ebuildName; do
                echo "$ebuildName" | grep -q '9999' && {
                    continue
                }
                actualPackage="$(dirname "$ebuildName" | grep -oE '[^/]+$')"
                actualEbuild="$(basename -s ".ebuild" "$ebuildName")"
                actualVersion="$(echo "$actualEbuild" | sed -E "s/$actualPackage-([^_\-]+).*/\1/" )"
                # using curl should be faster
                latestVersion="$(
                # gh release --repo "$properRemote" list --limit 2 --order desc --json tagName --jq '.[].tagName'\
                #     |
                # sed '/nightly/d'\
                #     |
                # head -n1\
                #     |
                # sed -E 's/v?(.+)/\1/'
                curl --silent -L -H "Accept: application/vnd.github+json"\
                    -H "Authorization: Bearer $GH_TOKEN"\
                    -H "X-GitHub-Api-Version: 2022-11-28"\
                    "https://api.github.com/repos/$properRemote/tags?per_page=2&page=1"\
                    |
                sed -nE '/nightly/d; s/\s*"name":\s*"v?(\S+)".*/\1/p'\
                    |
                head -n1
            )"
                {
                    [ -n "$latestVersion" ]\
                        &&
                    ! printf '%s\n%s\n' "$latestVersion" "$actualVersion"\
                        |
                    sort --check=quiet --version-sort
                    } && {
                    newPackageName="$(echo "$packageName" | grep -oE '[^/]+/[^/]+$')"
                    printf "| [%s](https://github.com/gentoo/guru/tree/dev/%s) |" "$newPackageName" "$newPackageName"
                    printf " %s |" "$actualVersion"
                    printf " [%s](https://github.com/%s/tags) |" "$latestVersion" "$properRemote"
                    maintainer=""
                    if grep -q -E 'maintainer.*needed' "$packageName/metadata.xml"; then
                        maintainer="none"
                    else
                        while IFS='' read -r metaDataMaintainerSearchLine; do
                            case $metaDataMaintainerSearchLine in
                                *'<maintainer'*)
                                    maintainerTagFound=1
                                    ;;
                                *'</maintainer>'*)
                                    maintainerTagFound=0
                                    ;;
                                *'<email>'*'</email>'*)
                                    if [ "$maintainerTagFound" -eq 1 ]; then
                                        maintainer="$metaDataMaintainerSearchLine"
                                        maintainer="${maintainer#*<email>}"
                                        maintainer="${maintainer%</email>*}"
                                        break
                                    fi
                                    ;;
                            esac
                        done < "$packageName/metadata.xml"
                    fi
                    # printf " | [%s](%s) |\n" "$maintainer" "https://repology.org/maintainer/$(echo "$maintainer" | sed -E '')"
                    if [ "$maintainer" = "none" ]; then
                        printf " none |\n"
                    else
                        printf " [%s](%s) |\n" "$maintainer" "https://repology.org/maintainer/$maintainer"
                    fi
                }
                break
            done
        }
    done
}

printf "# Disclaimer:

I have a problem, when I see outdated packages, I want to update them as soon as I can

I tried to find solutions, and in turn also founded like minded people with the same question, and even some answers,
but none of them seemed suitable for me, and making something myself is always more flexible then trying to find other
solutions that may not even fulfill my full use case

You may ask why use this when stuff like [repology](https://repology.org/projects/?inrepo=gentoo_ovl_guru&outdated=1)
exists? it's because this version checks ::guru's dev branch, which is easier for contributors because some package may
already be updated in the dev branch, and hasn't been updated to the master branch, so repology doesn't track that.

 - Only github is supported for now, will probably add more source checkers later

 - Currently it will check ::guru so i don't burn through my github api calls in a single run, if you want a report
 generated for ::gentoo, you should self host it/fork the repo and run the actions manually when you want

 - The report might be outdated, because the github actions will only run once per X ammount of time, the time is
 subject to change depending on my own API usage, so you may want to self run this if you want the complete up to date
 version.

 - Currently it's not modular, but I think I might be able to make this a usable github action for other repos, if you
 want this, hit me up and I maybe will make one, (no promises :3, and if i don't, you can do it yourself)

### Please:
 - Don't use this repo to make low quality/broken version bumps and/or prs and/or spam bug reports, the whole point is
 to upgrade overlay qualities, and make the lives for package maintainers' and contributors' a bit easier

 - If you're a new contributor trying to find packages to bump, [devmanual](https://devmanual.gentoo.org/) is your
 bible, [pkgcheck](https://packages.gentoo.org/packages/dev-util/pkgcheck) scan is your new best friend, and try to join
 the IRC if you can to get help and ask questions to your fellow gentoo mates

### Self host/Fork Host:

 - if you want to run this locally, you need to set a GH_TOKEN env var, i recommend using a [fine grained access
 token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#fine-grained-personal-access-tokens)

 please remember that the output is designed to be put inside a github readme, so it may not be pretty in the terminal

 - if you want to self run this using github actions (i recommend this way), you *should* be just able to fork it,
 create token and set GH_TOKEN secret, then run it through github actions

# [Guru Dev Branch](https://github.com/gentoo/guru/tree/dev):\n\n"
printTable "$(realpath ./guru)"
# printf "\n\n"
# printf "# [Gentoo Master Branch](https://github.com/gentoo/gentoo/tree/dev):\n\n"
# printTable "$(realpath ./guru)"

printf "\n\n\n\n\n\n<sub>Congrats, you made it to the bottom</sub>\n
<sub>if you can afford to pay my wifi bills, you can support me in patreon: https://www.patreon.com/IngenarelNeoJesus</sub>\n
<sub>i don't like putting this in my projects, but until my dropout ass finds a way to get a job/proper funding, i have
no choice but to accept donations, which i personally don't want to trust me</sub>\n
"
