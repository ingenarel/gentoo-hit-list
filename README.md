### A hit list generator for bored contributors who wanna see which packages are probably? outdated

supports checking:

- [x] GitHub
- [x] GitLab
- [x] Codeberg
- [ ] other Forgejo based repos (since Codeberg is based on Forgejo we only need to copy and paste the Codeberg checker then change the root of the links in the other Forgejo stuff and stuff *should* work out)
- [ ] Sourcehut (GraphQL hurts my brain, PRs are welcome)
- [ ] other GitLab instances (copy and paste the GitLab checker, change the root of the link, stuff *should* work out)
- [ ] SourceForge: TODO, PRs are welcome

<details>
    <summary>Why?</summary>
    
I have a problem, when I see outdated packages, I want to update them as soon as I can

I tried to find solutions, and in turn also founded like-minded people with the same question, and even some answers,
but none of them seemed suitable for me, and making something myself is always more flexible than trying to find other
solutions that may not even fulfill my full use case

You may ask why use this when stuff like [Repology](https://repology.org/projects/?inrepo=gentoo_ovl_guru&outdated=1)
exists? It's because this version checks ::guru's dev branch, which is easier for contributors because some package may
already be updated in the dev branch, and hasn't been updated to the master branch, so Repology doesn't track that.

On top of that Repology only compares the versions in all package repositories and treats the latest updated version as
the 'latest build', so what it technically shows as the 'latest version' can actually be outdated from the upstream, to
explain in simpler terms: if upstream has version 3, arch has version 2, and guru has version 2, Repology will show that
guru is up-to-date, because it's just comparing between the different versions. But this repo doesn't do it, it tries to
track upstream and get the latest version data, hence so many API calls.

While some might say that this level of data is not needed, I say that it is needed since just by glancing at the data
you can guess how many versions is it behind

</details>

<details>
    <summary>READ THIS:</summary>

### Please:
 - Don't use this repo to make low quality/broken version bumps and/or PRs and/or spam bug reports, the whole point is
 to upgrade overlay qualities, and make the lives for package maintainers' and contributors' a bit easier

 - If you're a new contributor trying to find packages to bump, [Devmanual](https://devmanual.gentoo.org/) is your
 bible, [Pkgcheck](https://packages.gentoo.org/packages/dev-util/pkgcheck) scan is your new best friend, and try to join
 the IRC if you can to get help and ask questions to your fellow Gentoo mates

### Self-host/Fork Host:

you need to set these env vars (for locally) / [repo secrets](https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/use-secrets) (for GitHub actions):

- `GH_TOKEN` ([for github.com](https://github.com/settings/personal-access-tokens))
- `GLAB_TOKEN` ([for gitlab.com](https://gitlab.com/-/user_settings/personal_access_tokens?page=1&state=active&sort=expires_asc), with the read_api scope)
- `CODEBERG_TOKEN`([for codeberg.org](https://codeberg.org/user/settings/applications), with read-only access to only public repositories)

for self-hosting, you need to make sure you have a system that has:

- a POSIX compliant shell
- sort command with the `--version-sort` (gnu coreutils has it for example)
- sed command with the extended regex support: `sed -E` (gnu sed has it)
- [GitHub CLI](https://cli.github.com) (should just work in GitHub actions, but probably need to be installed on your system if you want to run locally) I'm too lazy to redo my secrets and setup the GitHub check script to just use curl
- curl
- grep command that supports `-o` (most systems should just have it)

### Config file:

The config file is simple

`guru dev https://github.com/gentoo/guru.git`

There should be one line each for every repo you want to add

It's separated by spaces, the first item is the name of the repo, the second item is the name of the branch that you
wanna check, and the third item is the repo link

</details>

<details>
    <summary>notes:</summary>

 - Currently, it will check ::guru, so I don't burn through my GitHub API calls in a single run, if you want a report
 generated for ::gentoo, you should self-host it/fork the repo and run the actions manually when you want

 - The report might be outdated, because the GitHub actions will only run once per 2 days, the time is
 subject to change depending on my own API usage, so you may want to self run this if you want the complete up-to-date
 version.

 - I think I might be able to make this a usable GitHub action for other repos, if you
 want this, hit me up, and I maybe will make one, (no promises :3, and if I don't, you can do it yourself)

</details>

<!-- LTeX: enabled=false -->
<!-- start -->
<details>
    <summary><a href="https://github.com/gentoo/guru.git/tree/dev">guru dev branch</a></summary>

| Package | Downstream | Upstream | Maintainer |
| ------- | ---------- | -------- | ---------- |
| [app-admin/aws-vault](https://github.com/gentoo/guru/tree/dev/app-admin/aws-vault) | 7.8.6 | [7.9.3](https://github.com/ByteNess/aws-vault/tags) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [app-admin/chamber](https://github.com/gentoo/guru/tree/dev/app-admin/chamber) | 2.13.2 | [3.1.5](https://github.com/segmentio/chamber/tags) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [app-admin/dotbot](https://github.com/gentoo/guru/tree/dev/app-admin/dotbot) | 1.20.1 | [1.24.0](https://github.com/anishathalye/dotbot/tags) | [sstallion@gmail.com](https://repology.org/maintainer/sstallion@gmail.com) |
| [app-admin/fatrace](https://github.com/gentoo/guru/tree/dev/app-admin/fatrace) | 0.19.0 | [0.19.1](https://github.com/martinpitt/fatrace/tags) | [dev@dyama.net](https://repology.org/maintainer/dev@dyama.net) |
| [app-admin/hardinfo2](https://github.com/gentoo/guru/tree/dev/app-admin/hardinfo2) | 2.2.13 | [release-2.2.16](https://github.com/hardinfo2/hardinfo2/tags) | [quincyf467@protonmail.com](https://repology.org/maintainer/quincyf467@protonmail.com) |
| [app-admin/krapplet](https://github.com/gentoo/guru/tree/dev/app-admin/krapplet) | 0.3.1 | [0.4.0](https://gitlab.com/hfernh/krapplet/tags) | [hfern@fernhout.info](https://repology.org/maintainer/hfern@fernhout.info) |
| [app-admin/oet](https://github.com/gentoo/guru/tree/dev/app-admin/oet) | 0.1.11 | [oet-0.1.11](https://codeberg.org/bcsthsc/overlay-emerge-tool/tags) | [thomas.scholz@protonmail.com](https://repology.org/maintainer/thomas.scholz@protonmail.com) |
| [app-admin/overmind](https://github.com/gentoo/guru/tree/dev/app-admin/overmind) | 2.4.0 | [2.5.1](https://github.com/DarthSim/overmind/tags) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [app-admin/pulumi-bin](https://github.com/gentoo/guru/tree/dev/app-admin/pulumi-bin) | 3.207.0 | [3.219.0](https://github.com/pulumi/pulumi/tags) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [app-admin/synadm](https://github.com/gentoo/guru/tree/dev/app-admin/synadm) | 0.44 | [migrated-to-codeberg-note](https://github.com/JOJ0/synadm/tags) | [-](-) |
| [app-admin/terragrunt-bin](https://github.com/gentoo/guru/tree/dev/app-admin/terragrunt-bin) | 0.96.1 | [alpha-2026020601](https://github.com/gruntwork-io/terragrunt/tags) | [hi@dutra.sh](https://repology.org/maintainer/hi@dutra.sh) |
| [app-arch/libzim](https://github.com/gentoo/guru/tree/dev/app-arch/libzim) | 9.2.1 | [9.5.0](https://github.com/openzim/libzim/tags) | [-](-) |
| [app-backup/grub-btrfs](https://github.com/gentoo/guru/tree/dev/app-backup/grub-btrfs) | 4.13 | [4.14](https://github.com/Antynea/grub-btrfs/tags) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [app-backup/timeshift-autosnap](https://github.com/gentoo/guru/tree/dev/app-backup/timeshift-autosnap) | 0.9 | [4.14](https://github.com/Antynea/grub-btrfs/tags) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [app-backup/timeshift](https://github.com/gentoo/guru/tree/dev/app-backup/timeshift) | 23.07.1 | [master.lmde7](https://github.com/linuxmint/timeshift/tags) | [rossbridger.cc@gmail.com](https://repology.org/maintainer/rossbridger.cc@gmail.com) |
| [app-backup/vorta](https://github.com/gentoo/guru/tree/dev/app-backup/vorta) | 0.11.2 | [0.11.3](https://github.com/borgbase/vorta/tags) | [egger.m@protonmail.com](https://repology.org/maintainer/egger.m@protonmail.com) |
| [app-benchmarks/k6](https://github.com/gentoo/guru/tree/dev/app-benchmarks/k6) | 1.4.2 | [1.5.0](https://github.com/grafana/k6/tags) | [hi@dutra.sh](https://repology.org/maintainer/hi@dutra.sh) |
| [app-containers/kind](https://github.com/gentoo/guru/tree/dev/app-containers/kind) | 0.30.0 | [0.31.0](https://github.com/kubernetes-sigs/kind/tags) | [hi@dutra.sh](https://repology.org/maintainer/hi@dutra.sh) |
| [app-containers/pods](https://github.com/gentoo/guru/tree/dev/app-containers/pods) | 2.1.2 | [2.2.0](https://github.com/marhkb/pods/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [app-crypt/certbot-dns-cloudflare](https://github.com/gentoo/guru/tree/dev/app-crypt/certbot-dns-cloudflare) | 3.2.0 | [5.3.0](https://github.com/certbot/certbot/tags) | [kcelbert@gmail.com](https://repology.org/maintainer/kcelbert@gmail.com) |
| [app-crypt/certbot-dns-desec](https://github.com/gentoo/guru/tree/dev/app-crypt/certbot-dns-desec) | 1.2.1 | [1.3.2](https://github.com/desec-io/certbot-dns-desec/tags) | [-](-) |
| [app-crypt/certbot-dns-rfc2136](https://github.com/gentoo/guru/tree/dev/app-crypt/certbot-dns-rfc2136) | 3.2.0 | [5.3.0](https://github.com/certbot/certbot/tags) | [thican@thican.net](https://repology.org/maintainer/thican@thican.net) |
| [app-crypt/intel-ipsec-mb](https://github.com/gentoo/guru/tree/dev/app-crypt/intel-ipsec-mb) | 1.5 | [2.0](https://github.com/intel/intel-ipsec-mb/tags) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [app-crypt/nitrokey-app2](https://github.com/gentoo/guru/tree/dev/app-crypt/nitrokey-app2) | 2.4.1 | [2.5.2](https://github.com/Nitrokey/nitrokey-app2/tags) | [beatussum@protonmail.com](https://repology.org/maintainer/beatussum@protonmail.com) |
| [app-crypt/totp-cli-bin](https://github.com/gentoo/guru/tree/dev/app-crypt/totp-cli-bin) | 1.8.7 | [1.9.2](https://github.com/yitsushi/totp-cli/tags) | [-](-) |
| [app-doc/geeknote](https://github.com/gentoo/guru/tree/dev/app-doc/geeknote) | 3.0.6 | [3.0.7](https://github.com/vitaly-zdanevich/geeknote/tags) | [-](-) |
| [app-editors/edit](https://github.com/gentoo/guru/tree/dev/app-editors/edit) | 1.2.0 | [1.2.1](https://github.com/microsoft/edit/tags) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [app-editors/kakoune-lsp](https://github.com/gentoo/guru/tree/dev/app-editors/kakoune-lsp) | 18.1.0 | [19.0.1](https://github.com/kakoune-lsp/kakoune-lsp/tags) | [contact@qaidvoid.dev](https://repology.org/maintainer/contact@qaidvoid.dev) |
| [app-editors/lapce](https://github.com/gentoo/guru/tree/dev/app-editors/lapce) | 0.4.2 | [0.4.6](https://github.com/lapce/lapce/tags) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [app-editors/xed](https://github.com/gentoo/guru/tree/dev/app-editors/xed) | 3.8.7 | [master.lmde7](https://github.com/linuxmint/xed/tags) | [antonistatmichalis@outlook.com](https://repology.org/maintainer/antonistatmichalis@outlook.com) |
| [app-emulation/box64](https://github.com/gentoo/guru/tree/dev/app-emulation/box64) | 0.3.0 | [0.4.0](https://github.com/ptitSeb/box64/tags) | [rrogalski@tutanota.com](https://repology.org/maintainer/rrogalski@tutanota.com) |
| [app-emulation/box86](https://github.com/gentoo/guru/tree/dev/app-emulation/box86) | 0.3.6 | [0.3.8](https://github.com/ptitSeb/box86/tags) | [rrogalski@tutanota.com](https://repology.org/maintainer/rrogalski@tutanota.com) |
| [app-emulation/looking-glass](https://github.com/gentoo/guru/tree/dev/app-emulation/looking-glass) | 1 | [B7](https://github.com/gnif/LookingGlass/tags) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [app-emulation/lsfg-vk](https://github.com/gentoo/guru/tree/dev/app-emulation/lsfg-vk) | 1.0.0 | [2.0.0-dev](https://github.com/PancakeTAS/lsfg-vk/tags) | [w.iron.zombie@gmail.com](https://repology.org/maintainer/w.iron.zombie@gmail.com) |
| [app-emulation/quickemu](https://github.com/gentoo/guru/tree/dev/app-emulation/quickemu) | 4.9.7 | [4.9.8](https://github.com/quickemu-project/quickemu/tags) | [-](-) |
| [app-emulation/x48ng](https://github.com/gentoo/guru/tree/dev/app-emulation/x48ng) | 0.38.0 | [0.51.2](https://github.com/gwenhael-le-moine/x48ng/tags) | [szeist@pm.me](https://repology.org/maintainer/szeist@pm.me) |
| [app-metrics/scaphandre](https://github.com/gentoo/guru/tree/dev/app-metrics/scaphandre) | 0.5.0 | [1.0.2](https://github.com/hubblo-org/scaphandre/tags) | [mathieu.tortuyaux@gmail.com](https://repology.org/maintainer/mathieu.tortuyaux@gmail.com) |
| [app-misc/afetch](https://github.com/gentoo/guru/tree/dev/app-misc/afetch) | 2.2.0 | [V2.2.0](https://github.com/13-CF/afetch/tags) | [mathieu.tortuyaux@gmail.com](https://repology.org/maintainer/mathieu.tortuyaux@gmail.com) |
| [app-misc/arttime](https://github.com/gentoo/guru/tree/dev/app-misc/arttime) | 2.3.4 | [2.4.0](https://github.com/poetaman/arttime/tags) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [app-misc/astroterm](https://github.com/gentoo/guru/tree/dev/app-misc/astroterm) | 1.0.9 | [1.0.10](https://github.com/da-luce/astroterm/tags) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [app-misc/cheat](https://github.com/gentoo/guru/tree/dev/app-misc/cheat) | 4.3.3 | [4.4.2](https://github.com/cheat/cheat/tags) | [mathieu.tortuyaux@gmail.com](https://repology.org/maintainer/mathieu.tortuyaux@gmail.com) |
| [app-misc/clifm](https://github.com/gentoo/guru/tree/dev/app-misc/clifm) | 1.18 | [1.27.1](https://github.com/leo-arch/clifm/tags) | [michaelzcyang@gmail.com](https://repology.org/maintainer/michaelzcyang@gmail.com) |
| [app-misc/corectrl](https://github.com/gentoo/guru/tree/dev/app-misc/corectrl) | 1.5.1 | [1.5.2](https://gitlab.com/corectrl/corectrl/tags) | [kostadinshishmanov@protonmail.com](https://repology.org/maintainer/kostadinshishmanov@protonmail.com) |
| [app-misc/cpufetch](https://github.com/gentoo/guru/tree/dev/app-misc/cpufetch) | 1.06 | [1.07](https://github.com/Dr-Noob/cpufetch/tags) | [-](-) |
| [app-misc/doublecmd](https://github.com/gentoo/guru/tree/dev/app-misc/doublecmd) | 1.1.32 | [1.2.1](https://github.com/doublecmd/doublecmd/tags) | [-](-) |
| [app-misc/dpscreenocr](https://github.com/gentoo/guru/tree/dev/app-misc/dpscreenocr) | 1.4.1 | [1.5.0](https://github.com/danpla/dpscreenocr/tags) | [benoit.dufour@mail.com](https://repology.org/maintainer/benoit.dufour@mail.com) |
| [app-misc/far2l](https://github.com/gentoo/guru/tree/dev/app-misc/far2l) | 2.6.5 | [_2.7.0](https://github.com/elfmz/far2l/tags) | [syutkin@gmail.com](https://repology.org/maintainer/syutkin@gmail.com) |
| [app-misc/ghq](https://github.com/gentoo/guru/tree/dev/app-misc/ghq) | 1.8.0 | [1.8.1](https://github.com/x-motemen/ghq/tags) | [ingenarelitems@gmail.com](https://repology.org/maintainer/ingenarelitems@gmail.com) |
| [app-misc/github-desktop-bin](https://github.com/gentoo/guru/tree/dev/app-misc/github-desktop-bin) | 3.4.9 | [release-3.4.13-linux1](https://github.com/shiftkey/desktop/tags) | [](https://repology.org/maintainer/) |
| [app-misc/ledger-live-bin](https://github.com/gentoo/guru/tree/dev/app-misc/ledger-live-bin) | 2.84.1 | [@ledgerhq/live-desktop@2.139.1](https://github.com/LedgerHQ/ledger-live/tags) | [-](-) |
| [app-misc/lf](https://github.com/gentoo/guru/tree/dev/app-misc/lf) | 38 | [r41](https://github.com/gokcehan/lf/tags) | [efe.izbudak@metu.edu.tr](https://repology.org/maintainer/efe.izbudak@metu.edu.tr) |
| [app-misc/libation](https://github.com/gentoo/guru/tree/dev/app-misc/libation) | 12.5.3 | [13.1.8](https://github.com/rmcrackan/Libation/tags) | [juha@luotio.net](https://repology.org/maintainer/juha@luotio.net) |
| [app-misc/minder](https://github.com/gentoo/guru/tree/dev/app-misc/minder) | 1.16.3 | [2.0.5](https://github.com/phase1geo/Minder/tags) | [-](-) |
| [app-misc/mxw](https://github.com/gentoo/guru/tree/dev/app-misc/mxw) | 0.2.1 | [0.2.2](https://github.com/dkbednarczyk/mxw/tags) | [agooglygooglr@gmail.com](https://repology.org/maintainer/agooglygooglr@gmail.com) |
| [app-misc/mymefetch](https://github.com/gentoo/guru/tree/dev/app-misc/mymefetch) | 1.3 | [1.4](https://codeberg.org/MymeType/mymefetch/tags) | [-](-) |
| [app-misc/navi](https://github.com/gentoo/guru/tree/dev/app-misc/navi) | 2.24.0 | [2.25.0-beta1](https://github.com/denisidoro/navi/tags) | [beatussum@protonmail.com](https://repology.org/maintainer/beatussum@protonmail.com) |
| [app-misc/nerdfetch](https://github.com/gentoo/guru/tree/dev/app-misc/nerdfetch) | 8.3.1 | [8.5.1](https://github.com/ThatOneCalculator/NerdFetch/tags) | [nvraxn@gmail.com](https://repology.org/maintainer/nvraxn@gmail.com) |
| [app-misc/opentrack](https://github.com/gentoo/guru/tree/dev/app-misc/opentrack) | 2024.1.1 | [opentrack-2026.1.0](https://github.com/opentrack/opentrack/tags) | [hurikhan77+bgo@gmail.com](https://repology.org/maintainer/hurikhan77+bgo@gmail.com) |
| [app-misc/pfetch](https://github.com/gentoo/guru/tree/dev/app-misc/pfetch) | 1.9.4 | [1.10.0](https://github.com/Un1q32/pfetch/tags) | [mathieu.tortuyaux@gmail.com](https://repology.org/maintainer/mathieu.tortuyaux@gmail.com) |
| [app-misc/qman](https://github.com/gentoo/guru/tree/dev/app-misc/qman) | 1.5.0 | [1.5.1](https://github.com/plp13/qman/tags) | [rolferen@gmail.com](https://repology.org/maintainer/rolferen@gmail.com) |
| [app-misc/sherlock](https://github.com/gentoo/guru/tree/dev/app-misc/sherlock) | 0.15.0 | [0.16.0](https://github.com/sherlock-project/sherlock/tags) | [marco@sirabella.org](https://repology.org/maintainer/marco@sirabella.org) |
| [app-misc/television](https://github.com/gentoo/guru/tree/dev/app-misc/television) | 0.13.11 | [0.15.2](https://github.com/alexpasmantier/television/tags) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [app-misc/tinyfetch](https://github.com/gentoo/guru/tree/dev/app-misc/tinyfetch) | 6.2 | [6.8a](https://github.com/kernaltrap8/tinyfetch/tags) | [aidenwingard2@gmail.com](https://repology.org/maintainer/aidenwingard2@gmail.com) |
| [app-misc/treesheets](https://github.com/gentoo/guru/tree/dev/app-misc/treesheets) | 2665 | [2967](https://github.com/aardappel/treesheets/tags) | [gentoo@lapawa.de](https://repology.org/maintainer/gentoo@lapawa.de) |
| [app-misc/tty-share-bin](https://github.com/gentoo/guru/tree/dev/app-misc/tty-share-bin) | 2.4.0 | [2.4.1](https://github.com/elisescu/tty-share/tags) | [-](-) |
| [app-misc/twertlefetch](https://github.com/gentoo/guru/tree/dev/app-misc/twertlefetch) | 1.1.0 | [1.2.0](https://github.com/iliketwertles/twertlefetch/tags) | [jarodjoe1210@gmail.com](https://repology.org/maintainer/jarodjoe1210@gmail.com) |
| [app-misc/ufetch](https://github.com/gentoo/guru/tree/dev/app-misc/ufetch) | 0.3 | [0.4](https://gitlab.com/jschx/ufetch/tags) | [-](-) |
| [app-misc/vocabsieve](https://github.com/gentoo/guru/tree/dev/app-misc/vocabsieve) | 0.12.2 | [0.12.5](https://github.com/FreeLanguageTools/vocabsieve/tags) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [app-misc/wego](https://github.com/gentoo/guru/tree/dev/app-misc/wego) | 2.2 | [2.3](https://github.com/schachmat/wego/tags) | [-](-) |
| [app-misc/wl-kbptr](https://github.com/gentoo/guru/tree/dev/app-misc/wl-kbptr) | 0.3.0 | [0.4.1](https://github.com/moverest/wl-kbptr/tags) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [app-misc/wtf](https://github.com/gentoo/guru/tree/dev/app-misc/wtf) | 0.43.0 | [0.48.0](https://github.com/wtfutil/wtf/tags) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [app-misc/xplr](https://github.com/gentoo/guru/tree/dev/app-misc/xplr) | 0.21.3 | [1.1.0](https://github.com/sayanarijit/xplr/tags) | [rmicielski@purelymail.com](https://repology.org/maintainer/rmicielski@purelymail.com) |
| [app-misc/yazi](https://github.com/gentoo/guru/tree/dev/app-misc/yazi) | 25.5.31 | [26.1.22](https://github.com/sxyazi/yazi/tags) | [f00wl@felinn.org](https://repology.org/maintainer/f00wl@felinn.org) |
| [app-mobilephone/mobile-config-firefox](https://github.com/gentoo/guru/tree/dev/app-mobilephone/mobile-config-firefox) | 2.1.0 | [4.3.2](https://gitlab.com/postmarketOS/mobile-config-firefox/tags) | [-](-) |
| [app-office/lotus123r3](https://github.com/gentoo/guru/tree/dev/app-office/lotus123r3) | 1.0.0 | [1.0.0rc4](https://github.com/taviso/123elf/tags) | [joe@wt.gd](https://repology.org/maintainer/joe@wt.gd) |
| [app-office/notesnook-bin](https://github.com/gentoo/guru/tree/dev/app-office/notesnook-bin) | 2.6.12 | [3.3.8](https://github.com/streetwriters/notesnook/tags) | [-](-) |
| [app-office/obsidian](https://github.com/gentoo/guru/tree/dev/app-office/obsidian) | 1.10.3 | [1.11.7](https://github.com/obsidianmd/obsidian-releases/tags) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [app-office/pyspread](https://github.com/gentoo/guru/tree/dev/app-office/pyspread) | 2.4 | [2.4.3](https://gitlab.com/pyspread/pyspread/tags) | [-](-) |
| [app-office/standartnotes-bin](https://github.com/gentoo/guru/tree/dev/app-office/standartnotes-bin) | 3.183.22 | [@standardnotes/mobile@3.201.15](https://github.com/standardnotes/app/tags) | [-](-) |
| [app-shells/fzf-tab](https://github.com/gentoo/guru/tree/dev/app-shells/fzf-tab) | 0 | [1.2.0](https://github.com/Aloxaf/fzf-tab/tags) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [app-shells/powerline-go](https://github.com/gentoo/guru/tree/dev/app-shells/powerline-go) | 1.25 | [1.26](https://github.com/justjanne/powerline-go/tags) | [egorr.berd@gmail.com](https://repology.org/maintainer/egorr.berd@gmail.com) |
| [app-shells/zsh-autocomplete](https://github.com/gentoo/guru/tree/dev/app-shells/zsh-autocomplete) | 24.09.04 | [25.03.19](https://github.com/marlonrichert/zsh-autocomplete/tags) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [app-text/OCRmyPDF](https://github.com/gentoo/guru/tree/dev/app-text/OCRmyPDF) | 16.10.2 | [17.1.0](https://github.com/ocrmypdf/OCRmyPDF/tags) | [alarig@swordarmor.fr](https://repology.org/maintainer/alarig@swordarmor.fr) |
| [app-text/cmark-gfm](https://github.com/gentoo/guru/tree/dev/app-text/cmark-gfm) | 0.29.0.13 | [0.29.0.gfm.13](https://github.com/github/cmark-gfm/tags) | [dev@dyama.net](https://repology.org/maintainer/dev@dyama.net) |
| [app-text/ford](https://github.com/gentoo/guru/tree/dev/app-text/ford) | 7.0.12 | [7.0.13](https://github.com/Fortran-FOSS-Programmers/ford/tags) | [torokhov-s-a@yandex.ru](https://repology.org/maintainer/torokhov-s-a@yandex.ru) |
| [app-text/harper](https://github.com/gentoo/guru/tree/dev/app-text/harper) | 1.4.0 | [1.6.0](https://github.com/Automattic/harper/tags) | [timovanveen@hotmail.nl](https://repology.org/maintainer/timovanveen@hotmail.nl) |
| [app-text/iwe](https://github.com/gentoo/guru/tree/dev/app-text/iwe) | 0.0.60 | [iwe-v0.0.60](https://github.com/iwe-org/iwe/tags) | [contact@paveloom.dev](https://repology.org/maintainer/contact@paveloom.dev) |
| [app-text/komikku](https://github.com/gentoo/guru/tree/dev/app-text/komikku) | 1.100.0 | [1.102.0](https://codeberg.org/valos/Komikku/tags) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [app-text/koodo-reader-bin](https://github.com/gentoo/guru/tree/dev/app-text/koodo-reader-bin) | 1.6.3 | [2.2.6](https://github.com/troyeguo/koodo-reader/tags) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [app-text/lsp](https://github.com/gentoo/guru/tree/dev/app-text/lsp) | 0.5.0 | [0.5.0-rc3](https://github.com/dgouders/lsp/tags) | [dirk@gouders.net](https://repology.org/maintainer/dirk@gouders.net) |
| [app-text/pandoc-crossref-bin](https://github.com/gentoo/guru/tree/dev/app-text/pandoc-crossref-bin) | 0.3.17.0f | [0.3.23](https://github.com/lierdakil/pandoc-crossref/tags) | [-](-) |
| [app-text/sup2srt](https://github.com/gentoo/guru/tree/dev/app-text/sup2srt) | 1.0.6 | [1.1.0](https://github.com/retrontology/sup2srt/tags) | [contact@paveloom.dev](https://repology.org/maintainer/contact@paveloom.dev) |
| [app-text/texlab](https://github.com/gentoo/guru/tree/dev/app-text/texlab) | 5.24.0 | [5.25.1](https://github.com/latex-lsp/texlab/tags) | [gasc@eurecom.fr](https://repology.org/maintainer/gasc@eurecom.fr) |
| [app-text/tldr](https://github.com/gentoo/guru/tree/dev/app-text/tldr) | 3.4.1 | [3.4.3](https://github.com/tldr-pages/tldr-python-client/tags) | [contrib_x@protonmail.com](https://repology.org/maintainer/contrib_x@protonmail.com) |
| [app-text/vale](https://github.com/gentoo/guru/tree/dev/app-text/vale) | 3.9.1 | [3.13.1](https://github.com/errata-ai/vale/tags) | [erkiferenc@gmail.com](https://repology.org/maintainer/erkiferenc@gmail.com) |
| [app-vim/rainbow_csv](https://github.com/gentoo/guru/tree/dev/app-vim/rainbow_csv) | 1.10.0 | [4.3.0](https://github.com/mechatroner/rainbow_csv/tags) | [hendrik.klug@gmail.com](https://repology.org/maintainer/hendrik.klug@gmail.com) |
| [app-vim/vimwiki-cli](https://github.com/gentoo/guru/tree/dev/app-vim/vimwiki-cli) | 1.1.0 | [1.2.0](https://github.com/sstallion/vimwiki-cli/tags) | [-](-) |
| [dev-cpp/cpp-jwt](https://github.com/gentoo/guru/tree/dev/dev-cpp/cpp-jwt) | 1.5 | [1.5.1](https://github.com/arun11299/cpp-jwt/tags) | [samuel.bauer@yahoo.fr](https://repology.org/maintainer/samuel.bauer@yahoo.fr) |
| [dev-cpp/cpp-utilities](https://github.com/gentoo/guru/tree/dev/dev-cpp/cpp-utilities) | 5.32.0 | [5.32.1](https://github.com/Martchus/cpp-utilities/tags) | [esteve.varela@gmail.com](https://repology.org/maintainer/esteve.varela@gmail.com) |
| [dev-cpp/drogon](https://github.com/gentoo/guru/tree/dev/dev-cpp/drogon) | 1.9.6 | [1.9.12](https://github.com/drogonframework/drogon/tags) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [dev-cpp/gsl-lite](https://github.com/gentoo/guru/tree/dev/dev-cpp/gsl-lite) | 0.38.0 | [1.0.1](https://github.com/gsl-lite/gsl-lite/tags) | [brian.gloyer@gmail.com](https://repology.org/maintainer/brian.gloyer@gmail.com) |
| [dev-cpp/tinygltf](https://github.com/gentoo/guru/tree/dev/dev-cpp/tinygltf) | 2.9.6 | [2.9.7](https://github.com/syoyo/tinygltf/tags) | [dangduong31205@gmail.com](https://repology.org/maintainer/dangduong31205@gmail.com) |
| [dev-cpp/trantor](https://github.com/gentoo/guru/tree/dev/dev-cpp/trantor) | 1.5.20 | [1.5.26](https://github.com/an-tao/trantor/tags) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [dev-cpp/trompeloeil](https://github.com/gentoo/guru/tree/dev/dev-cpp/trompeloeil) | 47 | [49](https://github.com/rollbear/trompeloeil/tags) | [-](-) |
| [dev-cpp/units](https://github.com/gentoo/guru/tree/dev/dev-cpp/units) | 2.3.4 | [3.3.0](https://github.com/nholthaus/units/tags) | [kostadinshishmanov@protonmail.com](https://repology.org/maintainer/kostadinshishmanov@protonmail.com) |
| [dev-cpp/workflow](https://github.com/gentoo/guru/tree/dev/dev-cpp/workflow) | 0.10.5 | [0.11.11](https://github.com/sogou/workflow/tags) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [dev-crystal/http_proxy](https://github.com/gentoo/guru/tree/dev/dev-crystal/http_proxy) | 0.12.0 | [0.14.0](https://github.com/mamantoha/http_proxy/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [dev-crystal/kemal](https://github.com/gentoo/guru/tree/dev/dev-crystal/kemal) | 1.8.0 | [1.9.0](https://github.com/kemalcr/kemal/tags) | [-](-) |
| [dev-crystal/webdrivers](https://github.com/gentoo/guru/tree/dev/dev-crystal/webdrivers) | 0.4.3 | [0.4.4](https://github.com/crystal-loot/webdrivers.cr/tags) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [dev-db/sqlcmd](https://github.com/gentoo/guru/tree/dev/dev-db/sqlcmd) | 1.8.3 | [1.9.0](https://github.com/microsoft/go-sqlcmd/tags) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [dev-db/turso](https://github.com/gentoo/guru/tree/dev/dev-db/turso) | 0.4.4 | [0.5.0-pre.8](https://github.com/tursodatabase/turso/tags) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [dev-elixir/hex](https://github.com/gentoo/guru/tree/dev/dev-elixir/hex) | 1.0.1 | [2.3.1](https://github.com/hexpm/hex/tags) | [contact@hacktivis.me](https://repology.org/maintainer/contact@hacktivis.me) |
| [dev-embedded/arduino-cli](https://github.com/gentoo/guru/tree/dev/dev-embedded/arduino-cli) | 1.3.1 | [1.4.1](https://github.com/arduino/arduino-cli/tags) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [dev-embedded/esp-coredump](https://github.com/gentoo/guru/tree/dev/dev-embedded/esp-coredump) | 1.14.0 | [1.15.0](https://github.com/espressif/esp-coredump/tags) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-embedded/esp-idf-kconfig](https://github.com/gentoo/guru/tree/dev/dev-embedded/esp-idf-kconfig) | 2.5.1 | [3.4.2](https://github.com/espressif/esp-idf-kconfig/tags) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-embedded/esp-idf-monitor](https://github.com/gentoo/guru/tree/dev/dev-embedded/esp-idf-monitor) | 1.8.0 | [1.9.0](https://github.com/espressif/esp-idf-monitor/tags) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-embedded/esp-idf-panic-decoder](https://github.com/gentoo/guru/tree/dev/dev-embedded/esp-idf-panic-decoder) | 1.4.1 | [1.4.2](https://github.com/espressif/esp-idf-panic-decoder/tags) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-embedded/esp-idf-size](https://github.com/gentoo/guru/tree/dev/dev-embedded/esp-idf-size) | 1.7.1 | [2.1.0](https://github.com/espressif/esp-idf-size/tags) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-embedded/esp-idf](https://github.com/gentoo/guru/tree/dev/dev-embedded/esp-idf) | 5.5.2 | [6.0-beta2](https://github.com/espressif/esp-idf/tags) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-embedded/idf-component-manager](https://github.com/gentoo/guru/tree/dev/dev-embedded/idf-component-manager) | 2.4.2 | [2.4.6](https://github.com/espressif/idf-component-manager/tags) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-games/godot-dotnet](https://github.com/gentoo/guru/tree/dev/dev-games/godot-dotnet) | 4.6 | [4.6-stable](https://github.com/godotengine/godot/tags) | [ghostyn678+git@gmail.com](https://repology.org/maintainer/ghostyn678+git@gmail.com) |
| [dev-go/staticcheck](https://github.com/gentoo/guru/tree/dev/dev-go/staticcheck) | 0.3.3 | [2025.1.1](https://github.com/dominikh/go-tools/tags) | [ran.dall@icloud.com](https://repology.org/maintainer/ran.dall@icloud.com) |
| [dev-java/corretto-bin](https://github.com/gentoo/guru/tree/dev/dev-java/corretto-bin) | 25.0.0.36.2 | [january-2023-update](https://github.com/microsoft/openjdk/tags) | [dev@greener.sh](https://repology.org/maintainer/dev@greener.sh) |
| [dev-java/jdtls-bin](https://github.com/gentoo/guru/tree/dev/dev-java/jdtls-bin) | 1.56.0 | [hackathon_zrh](https://github.com/eclipse/eclipse.jdt.ls/tags) | [java@gentoo.org](https://repology.org/maintainer/java@gentoo.org) |
| [dev-java/microsoft-openjdk-bin](https://github.com/gentoo/guru/tree/dev/dev-java/microsoft-openjdk-bin) | 25.0.0 | [january-2023-update](https://github.com/microsoft/openjdk/tags) | [dev@greener.sh](https://repology.org/maintainer/dev@greener.sh) |
| [dev-lang/c3c](https://github.com/gentoo/guru/tree/dev/dev-lang/c3c) | 0.7.5 | [0.7.9](https://github.com/c3lang/c3c/tags) | [ch@brendlinonline.de](https://repology.org/maintainer/ch@brendlinonline.de) |
| [dev-lang/cc65](https://github.com/gentoo/guru/tree/dev/dev-lang/cc65) | 9999 | [V2.19](https://github.com/cc65/cc65/tags) | [sprice623@aol.com](https://repology.org/maintainer/sprice623@aol.com) |
| [dev-lang/crystal-bin](https://github.com/gentoo/guru/tree/dev/dev-lang/crystal-bin) | 1.18.2 | [1.19.1](https://github.com/crystal-lang/crystal/tags) | [-](-) |
| [dev-lang/odin](https://github.com/gentoo/guru/tree/dev/dev-lang/odin) | 2025.06 | [dev-2026-02](https://github.com/odin-lang/Odin/tags) | [-](-) |
| [dev-lang/opencilk-bin](https://github.com/gentoo/guru/tree/dev/dev-lang/opencilk-bin) | 2.1 | [opencilk/v3.0](https://github.com/OpenCilk/opencilk-project/tags) | [flow@gentoo.org](https://repology.org/maintainer/flow@gentoo.org) |
| [dev-lang/opencilk](https://github.com/gentoo/guru/tree/dev/dev-lang/opencilk) | 2.1 | [opencilk/v3.0](https://github.com/OpenCilk/cheetah/tags) | [flow@gentoo.org](https://repology.org/maintainer/flow@gentoo.org) |
| [dev-lang/swift-bin](https://github.com/gentoo/guru/tree/dev/dev-lang/swift-bin) | 6.2.3 | [swift-6.2.3-RELEASE](https://github.com/swiftlang/swift/tags) | [itai@itaiferber.net](https://repology.org/maintainer/itai@itaiferber.net) |
| [dev-lang/swift-bootstrap](https://github.com/gentoo/guru/tree/dev/dev-lang/swift-bootstrap) | 1.0 | [swift-6.2.3-RELEASE](https://github.com/swiftlang/swift/tags) | [itai@itaiferber.net](https://repology.org/maintainer/itai@itaiferber.net) |
| [dev-lang/swift](https://github.com/gentoo/guru/tree/dev/dev-lang/swift) | 6.2.3 | [swift-6.2.3-RELEASE](https://github.com/swiftlang/swift/tags) | [itai@itaiferber.net](https://repology.org/maintainer/itai@itaiferber.net) |
| [dev-lang/uiua](https://github.com/gentoo/guru/tree/dev/dev-lang/uiua) | 0.17.2 | [0.18.0](https://github.com/uiua-lang/uiua/tags) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-lang/wabt](https://github.com/gentoo/guru/tree/dev/dev-lang/wabt) | 1.0.37 | [1.0.39](https://github.com/WebAssembly/wabt/tags) | [contact@hacktivis.me](https://repology.org/maintainer/contact@hacktivis.me) |
| [dev-libs/M_CLI2](https://github.com/gentoo/guru/tree/dev/dev-libs/M_CLI2) | 3.2.0 | [V3.2.0](https://github.com/urbanjost/M_CLI2/tags) | [torokhov-s-a@yandex.ru](https://repology.org/maintainer/torokhov-s-a@yandex.ru) |
| [dev-libs/cyrus-sasl-xoauth2](https://github.com/gentoo/guru/tree/dev/dev-libs/cyrus-sasl-xoauth2) | 0.2 | [edge](https://github.com/moriyoshi/cyrus-sasl-xoauth2/tags) | [mathijs@mathsaey.be](https://repology.org/maintainer/mathijs@mathsaey.be) |
| [dev-libs/ip2loc](https://github.com/gentoo/guru/tree/dev/dev-libs/ip2loc) | 8.6.1 | [8.7.0](https://github.com/chrislim2888/IP2Location-C-Library/tags) | [trakrailysurely@danceylove.net](https://repology.org/maintainer/trakrailysurely@danceylove.net) |
| [dev-libs/libcli](https://github.com/gentoo/guru/tree/dev/dev-libs/libcli) | 1.10.7 | [V1.10.7](https://github.com/dparrish/libcli/tags) | [zhuyifei1999@gmail.com](https://repology.org/maintainer/zhuyifei1999@gmail.com) |
| [dev-libs/libsignal-ffi](https://github.com/gentoo/guru/tree/dev/dev-libs/libsignal-ffi) | 0.86.8 | [0.87.1](https://github.com/signalapp/libsignal/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [dev-libs/libtypec](https://github.com/gentoo/guru/tree/dev/dev-libs/libtypec) | 0.5.2 | [libtypec-0.5.1](https://github.com/Rajaram-Regupathy/libtypec/tags) | [adrian.ratiu@collabora.com](https://repology.org/maintainer/adrian.ratiu@collabora.com) |
| [dev-libs/lsquic](https://github.com/gentoo/guru/tree/dev/dev-libs/lsquic) | 4.2.0 | [4.5.0](https://github.com/litespeedtech/lsquic/tags) | [trakrailysurely@danceylove.net](https://repology.org/maintainer/trakrailysurely@danceylove.net) |
| [dev-libs/luksmeta](https://github.com/gentoo/guru/tree/dev/dev-libs/luksmeta) | 9 | [10](https://github.com/latchset/luksmeta/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [dev-libs/lygia](https://github.com/gentoo/guru/tree/dev/dev-libs/lygia) | 1.3.0 | [1.4.0](https://github.com/patriciogonzalezvivo/lygia/tags) | [dangduong31205@gmail.com](https://repology.org/maintainer/dangduong31205@gmail.com) |
| [dev-libs/nanopb](https://github.com/gentoo/guru/tree/dev/dev-libs/nanopb) | 0.4.9.1 | [nanopb-0.4.9.1](https://github.com/nanopb/nanopb/tags) | [vincentahluwalia@protonmail.com](https://repology.org/maintainer/vincentahluwalia@protonmail.com) |
| [dev-libs/open62541](https://github.com/gentoo/guru/tree/dev/dev-libs/open62541) | 1.4.14 | [1.4.15](https://github.com/open62541/open62541/tags) | [kurt@kmk-computers.de](https://repology.org/maintainer/kurt@kmk-computers.de) |
| [dev-libs/s2n](https://github.com/gentoo/guru/tree/dev/dev-libs/s2n) | 1.5.27 | [1.7.0](https://github.com/aws/s2n-tls/tags) | [trakrailysurely@danceylove.net](https://repology.org/maintainer/trakrailysurely@danceylove.net) |
| [dev-libs/tweeny](https://github.com/gentoo/guru/tree/dev/dev-libs/tweeny) | 3.2.0 | [3.2.1](https://github.com/mobius3/tweeny/tags) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [dev-ml/chrome-trace](https://github.com/gentoo/guru/tree/dev/dev-ml/chrome-trace) | 3.16.0 | [3.21.0](https://github.com/ocaml/dune/tags) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/dune-rpc](https://github.com/gentoo/guru/tree/dev/dev-ml/dune-rpc) | 3.16.0 | [3.21.0](https://github.com/ocaml/dune/tags) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/jsonrpc](https://github.com/gentoo/guru/tree/dev/dev-ml/jsonrpc) | 1.19.0 | [1.25.0](https://github.com/ocaml/ocaml-lsp/tags) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/lsp](https://github.com/gentoo/guru/tree/dev/dev-ml/lsp) | 1.19.0 | [1.25.0](https://github.com/ocaml/ocaml-lsp/tags) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/lwt-dllist](https://github.com/gentoo/guru/tree/dev/dev-ml/lwt-dllist) | 1.0.1 | [1.1.0](https://github.com/mirage/lwt-dllist/tags) | [fogti@ytrizja.de](https://repology.org/maintainer/fogti@ytrizja.de) |
| [dev-ml/merlin-lib](https://github.com/gentoo/guru/tree/dev/dev-ml/merlin-lib) | 4.16 | [5.6.1-504](https://github.com/ocaml/merlin/tags) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/ocaml-version](https://github.com/gentoo/guru/tree/dev/dev-ml/ocaml-version) | 3.6.9 | [4.0.3](https://github.com/ocurrent/ocaml-version/tags) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/ocamlc-loc](https://github.com/gentoo/guru/tree/dev/dev-ml/ocamlc-loc) | 3.16.0 | [3.21.0](https://github.com/ocaml/dune/tags) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/ocamlformat-lib](https://github.com/gentoo/guru/tree/dev/dev-ml/ocamlformat-lib) | 0.26.2 | [0.28.1](https://github.com/ocaml-ppx/ocamlformat/tags) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/ocamlformat-rpc-lib](https://github.com/gentoo/guru/tree/dev/dev-ml/ocamlformat-rpc-lib) | 0.26.2 | [0.28.1](https://github.com/ocaml-ppx/ocamlformat/tags) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-nim/cligen](https://github.com/gentoo/guru/tree/dev/dev-nim/cligen) | 1.9.5 | [1.9.6](https://github.com/c-blake/cligen/tags) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [dev-nim/nake](https://github.com/gentoo/guru/tree/dev/dev-nim/nake) | 1.9.4 | [1.9.5](https://github.com/fowlmouth/nake/tags) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [dev-python/PyPubSub](https://github.com/gentoo/guru/tree/dev/dev-python/PyPubSub) | 4.0.3 | [rel_3.4.2](https://github.com/schollii/pypubsub/tags) | [-](-) |
| [dev-python/ahocorasick](https://github.com/gentoo/guru/tree/dev/dev-python/ahocorasick) | 2.1.0 | [2.3.0](https://github.com/WojciechMula/pyahocorasick/tags) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-python/annotated-doc](https://github.com/gentoo/guru/tree/dev/dev-python/annotated-doc) | 0.0.2 | [0.0.4](https://github.com/fastapi/annotated-doc/tags) | [negril.nx+gentoo@gmail.com](https://repology.org/maintainer/negril.nx+gentoo@gmail.com) |
| [dev-python/asyncpg](https://github.com/gentoo/guru/tree/dev/dev-python/asyncpg) | 0.30.0 | [0.31.0](https://github.com/MagicStack/asyncpg/tags) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [dev-python/auditok](https://github.com/gentoo/guru/tree/dev/dev-python/auditok) | 0.2.0 | [0.3.0](https://github.com/amsehili/auditok/tags) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [dev-python/autopxd](https://github.com/gentoo/guru/tree/dev/dev-python/autopxd) | 2.5.0 | [3.2.2](https://github.com/elijahr/python-autopxd2/tags) | [wuzhenyu@ustc.edu](https://repology.org/maintainer/wuzhenyu@ustc.edu) |
| [dev-python/azure-core](https://github.com/gentoo/guru/tree/dev/dev-python/azure-core) | 1.28.0 | [azure-ai-evaluation_1.15.0](https://github.com/Azure/azure-sdk-for-python/tags) | [-](-) |
| [dev-python/azure-storage-blob](https://github.com/gentoo/guru/tree/dev/dev-python/azure-storage-blob) | 12.17.0 | [azure-ai-evaluation_1.15.0](https://github.com/Azure/azure-sdk-for-python/tags) | [-](-) |
| [dev-python/billiard](https://github.com/gentoo/guru/tree/dev/dev-python/billiard) | 4.0.2 | [4.2.4](https://github.com/celery/billiard/tags) | [-](-) |
| [dev-python/bleak](https://github.com/gentoo/guru/tree/dev/dev-python/bleak) | 1.1.1 | [2.1.1](https://github.com/hbldh/bleak/tags) | [zl29ah@gmail.com](https://repology.org/maintainer/zl29ah@gmail.com) |
| [dev-python/blurhash](https://github.com/gentoo/guru/tree/dev/dev-python/blurhash) | 1.1.5 | [1.1.5-pub-2](https://github.com/halcy/blurhash-python/tags) | [-](-) |
| [dev-python/celery](https://github.com/gentoo/guru/tree/dev/dev-python/celery) | 5.4.0 | [5.6.2](https://github.com/celery/celery/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [dev-python/click-command-tree](https://github.com/gentoo/guru/tree/dev/dev-python/click-command-tree) | 1.1.1 | [1.2.0](https://github.com/whwright/click-command-tree/tags) | [-](-) |
| [dev-python/click-repl](https://github.com/gentoo/guru/tree/dev/dev-python/click-repl) | 0.2.0 | [0.3.0](https://github.com/click-contrib/click-repl/tags) | [-](-) |
| [dev-python/dacite](https://github.com/gentoo/guru/tree/dev/dev-python/dacite) | 1.8.1 | [1.9.2-fix](https://github.com/konradhalas/dacite/tags) | [andrea.postiglione@gmail.com](https://repology.org/maintainer/andrea.postiglione@gmail.com) |
| [dev-python/dateparser](https://github.com/gentoo/guru/tree/dev/dev-python/dateparser) | 1.2.2 | [1.3.0](https://github.com/scrapinghub/dateparser/tags) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [dev-python/django-constance](https://github.com/gentoo/guru/tree/dev/dev-python/django-constance) | 3.1.0 | [4.3.4](https://github.com/jazzband/django-constance/tags) | [](https://repology.org/maintainer/) |
| [dev-python/dtreeviz](https://github.com/gentoo/guru/tree/dev/dev-python/dtreeviz) | 2.2.2 | [2.3.1](https://github.com/parrt/dtreeviz/tags) | [torsi@fi.uba.ar](https://repology.org/maintainer/torsi@fi.uba.ar) |
| [dev-python/fastapi](https://github.com/gentoo/guru/tree/dev/dev-python/fastapi) | 0.127.0 | [0.128.3](https://github.com/fastapi/fastapi/tags) | [negril.nx+gentoo@gmail.com](https://repology.org/maintainer/negril.nx+gentoo@gmail.com) |
| [dev-python/fontawesomefree](https://github.com/gentoo/guru/tree/dev/dev-python/fontawesomefree) | 6.5.1 | [7.1.0](https://github.com/FortAwesome/Font-Awesome/tags) | [](https://repology.org/maintainer/) |
| [dev-python/graphql-core](https://github.com/gentoo/guru/tree/dev/dev-python/graphql-core) | 3.2.3 | [3.2.7](https://github.com/graphql-python/graphql-core/tags) | [-](-) |
| [dev-python/icecream](https://github.com/gentoo/guru/tree/dev/dev-python/icecream) | 2.1.8 | [2.1.10](https://github.com/gruns/icecream/tags) | [gasc@eurecom.fr](https://repology.org/maintainer/gasc@eurecom.fr) |
| [dev-python/injector](https://github.com/gentoo/guru/tree/dev/dev-python/injector) | 0.22.0 | [0.24.0](https://github.com/python-injector/injector/tags) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [dev-python/internetarchive](https://github.com/gentoo/guru/tree/dev/dev-python/internetarchive) | 5.7.1 | [5.7.2](https://github.com/jjjake/internetarchive/tags) | [esteve.varela@gmail.com](https://repology.org/maintainer/esteve.varela@gmail.com) |
| [dev-python/itemadapter](https://github.com/gentoo/guru/tree/dev/dev-python/itemadapter) | 0.11.0 | [0.12.0](https://github.com/scrapy/itemadapter/tags) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [dev-python/itemloaders](https://github.com/gentoo/guru/tree/dev/dev-python/itemloaders) | 1.3.2 | [1.4.0](https://github.com/scrapy/itemloaders/tags) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [dev-python/jinja2-cli](https://github.com/gentoo/guru/tree/dev/dev-python/jinja2-cli) | 0.8.2 | [1.0.0](https://github.com/mattrobenolt/jinja2-cli/tags) | [-](-) |
| [dev-python/jsonfeed](https://github.com/gentoo/guru/tree/dev/dev-python/jsonfeed) | 1.1.2 | [1.2.0](https://github.com/lukasschwab/jsonfeed/tags) | [gasc@eurecom.fr](https://repology.org/maintainer/gasc@eurecom.fr) |
| [dev-python/justhtml](https://github.com/gentoo/guru/tree/dev/dev-python/justhtml) | 0.16.0 | [1.6.0](https://github.com/EmilStenstrom/justhtml/tags) | [ivan.lloro.boada@gmail.com](https://repology.org/maintainer/ivan.lloro.boada@gmail.com) |
| [dev-python/ledger-bitcoin](https://github.com/gentoo/guru/tree/dev/dev-python/ledger-bitcoin) | 0.4.0 | [2.4.2](https://github.com/LedgerHQ/app-bitcoin-new/tags) | [watermanpaint@posteo.net](https://repology.org/maintainer/watermanpaint@posteo.net) |
| [dev-python/lru-dict](https://github.com/gentoo/guru/tree/dev/dev-python/lru-dict) | 1.4.1 | [1.5.0](https://github.com/amitdev/lru-dict/tags) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [dev-python/markdownify](https://github.com/gentoo/guru/tree/dev/dev-python/markdownify) | 0.11.6 | [1.2.2](https://github.com/matthewwithanm/python-markdownify/tags) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [dev-python/mkdocs-rss-plugin](https://github.com/gentoo/guru/tree/dev/dev-python/mkdocs-rss-plugin) | 1.17.4 | [1.17.9](https://github.com/Guts/mkdocs-rss-plugin/tags) | [gasc@eurecom.fr](https://repology.org/maintainer/gasc@eurecom.fr) |
| [dev-python/mollie-api-python](https://github.com/gentoo/guru/tree/dev/dev-python/mollie-api-python) | 3.6.0 | [3.9.1](https://github.com/mollie/mollie-api-python/tags) | [](https://repology.org/maintainer/) |
| [dev-python/moreorless](https://github.com/gentoo/guru/tree/dev/dev-python/moreorless) | 0.4.0 | [0.5.0](https://github.com/thatch/moreorless/tags) | [-](-) |
| [dev-python/mpxj](https://github.com/gentoo/guru/tree/dev/dev-python/mpxj) | 14.1.0 | [15.3.1](https://github.com/joniles/mpxj/tags) | [ivan.lloro.boada@gmail.com](https://repology.org/maintainer/ivan.lloro.boada@gmail.com) |
| [dev-python/nitrokey](https://github.com/gentoo/guru/tree/dev/dev-python/nitrokey) | 0.4.1 | [0.4.2](https://github.com/Nitrokey/nitrokey-sdk-py/tags) | [beatussum@protonmail.com](https://repology.org/maintainer/beatussum@protonmail.com) |
| [dev-python/odfdo](https://github.com/gentoo/guru/tree/dev/dev-python/odfdo) | 3.18.2 | [3.20.0](https://github.com/jdum/odfdo/tags) | [ivan.lloro.boada@gmail.com](https://repology.org/maintainer/ivan.lloro.boada@gmail.com) |
| [dev-python/parsel](https://github.com/gentoo/guru/tree/dev/dev-python/parsel) | 1.10.0 | [1.11.0](https://github.com/scrapy/parsel/tags) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [dev-python/phx-class-registry](https://github.com/gentoo/guru/tree/dev/dev-python/phx-class-registry) | 4.1.0 | [5.1.1](https://github.com/todofixthis/class-registry/tags) | [ezzieyguywuf@gmail.com](https://repology.org/maintainer/ezzieyguywuf@gmail.com) |
| [dev-python/pillow-jxl-plugin](https://github.com/gentoo/guru/tree/dev/dev-python/pillow-jxl-plugin) | 1.3.2 | [1.3.7](https://github.com/Isotr0py/pillow-jpegxl-plugin/tags) | [dev@dyama.net](https://repology.org/maintainer/dev@dyama.net) |
| [dev-python/posthog](https://github.com/gentoo/guru/tree/dev/dev-python/posthog) | 7.8.0 | [7.8.3](https://github.com/PostHog/posthog-python/tags) | [contact@paveloom.dev](https://repology.org/maintainer/contact@paveloom.dev) |
| [dev-python/prometheus_exporter](https://github.com/gentoo/guru/tree/dev/dev-python/prometheus_exporter) | 1.1.0 | [1.3.0](https://github.com/desultory/prometheus_exporter/tags) | [dev@pyl.onl](https://repology.org/maintainer/dev@pyl.onl) |
| [dev-python/proselint](https://github.com/gentoo/guru/tree/dev/dev-python/proselint) | 0.14.0 | [0.16.0](https://github.com/amperser/proselint/tags) | [-](-) |
| [dev-python/protego](https://github.com/gentoo/guru/tree/dev/dev-python/protego) | 0.4.0 | [0.6.0](https://github.com/scrapy/protego/tags) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [dev-python/ptpython](https://github.com/gentoo/guru/tree/dev/dev-python/ptpython) | 3.0.29 | [3.0.32](https://github.com/prompt-toolkit/ptpython/tags) | [wuzhenyu@ustc.edu](https://repology.org/maintainer/wuzhenyu@ustc.edu) |
| [dev-python/pwdlib](https://github.com/gentoo/guru/tree/dev/dev-python/pwdlib) | 0.2.1 | [0.3.0](https://github.com/frankie567/pwdlib/tags) | [negril.nx+gentoo@gmail.com](https://repology.org/maintainer/negril.nx+gentoo@gmail.com) |
| [dev-python/pydantic-extra-types](https://github.com/gentoo/guru/tree/dev/dev-python/pydantic-extra-types) | 2.10.6 | [2.11.0](https://github.com/pydantic/pydantic-extra-types/tags) | [parona@protonmail.com](https://repology.org/maintainer/parona@protonmail.com) |
| [dev-python/pyfiglet](https://github.com/gentoo/guru/tree/dev/dev-python/pyfiglet) | 1.0.2 | [1.0.4](https://github.com/pwaller/pyfiglet/tags) | [-](-) |
| [dev-python/pygments-promql](https://github.com/gentoo/guru/tree/dev/dev-python/pygments-promql) | 0.0.9 | [0.1.1](https://github.com/pabluk/pygments-promql/tags) | [mathieu.tortuyaux@gmail.com](https://repology.org/maintainer/mathieu.tortuyaux@gmail.com) |
| [dev-python/pymorphy3](https://github.com/gentoo/guru/tree/dev/dev-python/pymorphy3) | 1.2.0 | [2.0.6](https://github.com/no-plagiarism/pymorphy3/tags) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [dev-python/pyproject2ebuild](https://github.com/gentoo/guru/tree/dev/dev-python/pyproject2ebuild) | 0.0.3 | [0.0.4](https://gitlab.com/oz123/pyproject2ebuild/tags) | [oz.tiram@gmail.com](https://repology.org/maintainer/oz.tiram@gmail.com) |
| [dev-python/pyrime](https://github.com/gentoo/guru/tree/dev/dev-python/pyrime) | 0.0.7 | [0.2.3](https://github.com/Freed-Wu/pyrime/tags) | [wuzhenyu@ustc.edu](https://repology.org/maintainer/wuzhenyu@ustc.edu) |
| [dev-python/pysdl3](https://github.com/gentoo/guru/tree/dev/dev-python/pysdl3) | 0.9.9 | [0.9.10b0](https://github.com/Aermoss/PySDL3/tags) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-python/pystardict](https://github.com/gentoo/guru/tree/dev/dev-python/pystardict) | 0.8 | [0.9](https://github.com/lig/pystardict/tags) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [dev-python/pytest-celery](https://github.com/gentoo/guru/tree/dev/dev-python/pytest-celery) | 0.1.0 | [1.2.1](https://github.com/celery/pytest-celery/tags) | [-](-) |
| [dev-python/python-fire](https://github.com/gentoo/guru/tree/dev/dev-python/python-fire) | 0.7.0 | [0.7.1](https://github.com/google/python-fire/tags) | [-](-) |
| [dev-python/python-socketio](https://github.com/gentoo/guru/tree/dev/dev-python/python-socketio) | 5.12.1 | [5.16.1](https://github.com/miguelgrinberg/python-socketio/tags) | [-](-) |
| [dev-python/python-telegram-bot](https://github.com/gentoo/guru/tree/dev/dev-python/python-telegram-bot) | 21.1.1 | [22.6](https://github.com/python-telegram-bot/python-telegram-bot/tags) | [dwosky@pm.me](https://repology.org/maintainer/dwosky@pm.me) |
| [dev-python/queuelib](https://github.com/gentoo/guru/tree/dev/dev-python/queuelib) | 1.8.0 | [1.9.0](https://github.com/scrapy/queuelib/tags) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [dev-python/rectangle-packer](https://github.com/gentoo/guru/tree/dev/dev-python/rectangle-packer) | 2.0.2 | [2.0.5](https://github.com/Penlect/rectangle-packer/tags) | [navi@vlhl.dev](https://repology.org/maintainer/navi@vlhl.dev) |
| [dev-python/scrapy](https://github.com/gentoo/guru/tree/dev/dev-python/scrapy) | 2.12.0 | [2.14.1](https://github.com/scrapy/scrapy/tags) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [dev-python/sendgrid](https://github.com/gentoo/guru/tree/dev/dev-python/sendgrid) | 6.11.0 | [6.12.5](https://github.com/sendgrid/sendgrid-python/tags) | [stepan_kk@pm.me](https://repology.org/maintainer/stepan_kk@pm.me) |
| [dev-python/sentry-sdk](https://github.com/gentoo/guru/tree/dev/dev-python/sentry-sdk) | 2.30.0 | [2.52.0](https://github.com/getsentry/sentry-python/tags) | [-](-) |
| [dev-python/simplemma](https://github.com/gentoo/guru/tree/dev/dev-python/simplemma) | 0.9.1 | [1.1.2](https://github.com/adbar/simplemma/tags) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [dev-python/sphinx-click](https://github.com/gentoo/guru/tree/dev/dev-python/sphinx-click) | 4.2.0 | [6.2.0](https://github.com/click-contrib/sphinx-click/tags) | [-](-) |
| [dev-python/sphinx-design](https://github.com/gentoo/guru/tree/dev/dev-python/sphinx-design) | 0.6.1 | [0.7.0](https://github.com/executablebooks/sphinx-design/tags) | [gasc@eurecom.fr](https://repology.org/maintainer/gasc@eurecom.fr) |
| [dev-python/sqlmodel](https://github.com/gentoo/guru/tree/dev/dev-python/sqlmodel) | 0.0.31 | [0.0.32](https://github.com/fastapi/sqlmodel/tags) | [negril.nx+gentoo@gmail.com](https://repology.org/maintainer/negril.nx+gentoo@gmail.com) |
| [dev-python/syrupy](https://github.com/gentoo/guru/tree/dev/dev-python/syrupy) | 5.0.0 | [5.1.0](https://github.com/syrupy-project/syrupy/tags) | [gasc@eurecom.fr](https://repology.org/maintainer/gasc@eurecom.fr) |
| [dev-python/templated-dictionary](https://github.com/gentoo/guru/tree/dev/dev-python/templated-dictionary) | 1.6 | [python-templated-dictionary-1.5-1](https://github.com/xsuchy/templated-dictionary/tags) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [dev-python/tweepy](https://github.com/gentoo/guru/tree/dev/dev-python/tweepy) | 4.14.0 | [4.16.0](https://github.com/tweepy/tweepy/tags) | [-](-) |
| [dev-python/w3lib](https://github.com/gentoo/guru/tree/dev/dev-python/w3lib) | 2.3.1 | [2.4.0](https://github.com/scrapy/w3lib/tags) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [dev-python/xattr](https://github.com/gentoo/guru/tree/dev/dev-python/xattr) | 1.2.0 | [1.3.0](https://github.com/xattr/xattr/tags) | [-](-) |
| [dev-ruby/byebug](https://github.com/gentoo/guru/tree/dev/dev-ruby/byebug) | 11.1.3 | [13.0.0](https://github.com/deivid-rodriguez/byebug/tags) | [-](-) |
| [dev-ruby/pry-byebug](https://github.com/gentoo/guru/tree/dev/dev-ruby/pry-byebug) | 3.10.1 | [3.12.0](https://github.com/deivid-rodriguez/pry-byebug/tags) | [-](-) |
| [dev-ruby/rbspy](https://github.com/gentoo/guru/tree/dev/dev-ruby/rbspy) | 0.21.0 | [0.42.1](https://github.com/rbspy/rbspy/tags) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [dev-ruby/ruby-install](https://github.com/gentoo/guru/tree/dev/dev-ruby/ruby-install) | 0.9.3 | [0.10.2](https://github.com/postmodern/ruby-install/tags) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [dev-ruby/ruby-lsp](https://github.com/gentoo/guru/tree/dev/dev-ruby/ruby-lsp) | 0.26.4 | [scode-ruby-lsp-v0.10.0](https://github.com/Shopify/ruby-lsp/tags) | [truffle074@gmail.com](https://repology.org/maintainer/truffle074@gmail.com) |
| [dev-tex/tabularray](https://github.com/gentoo/guru/tree/dev/dev-tex/tabularray) | 2023.03.01 | [2025C](https://github.com/lvjr/tabularray/tags) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [dev-tex/tectonic](https://github.com/gentoo/guru/tree/dev/dev-tex/tectonic) | 0.15.0 | [tectonic@0.15.0](https://github.com/tectonic-typesetting/tectonic/tags) | [-](-) |
| [dev-util/DirectXShaderCompiler](https://github.com/gentoo/guru/tree/dev/dev-util/DirectXShaderCompiler) | 1.8.2505 | [1.8.2505.1](https://github.com/microsoft/DirectXShaderCompiler/tags) | [denis7774@gmail.com](https://repology.org/maintainer/denis7774@gmail.com) |
| [dev-util/bash-language-server](https://github.com/gentoo/guru/tree/dev/dev-util/bash-language-server) | 5.6.0 | [server-5.6.0](https://github.com/bash-lsp/bash-language-server/tags) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [dev-util/bats-assert](https://github.com/gentoo/guru/tree/dev/dev-util/bats-assert) | 2.2.0 | [2.2.4](https://github.com/bats-core/bats-assert/tags) | [-](-) |
| [dev-util/catalyst-lab](https://github.com/gentoo/guru/tree/dev/dev-util/catalyst-lab) | 1.6.1 | [catalyst-lab-v1.6.1](https://github.com/damiandudycz/catalyst-lab/tags) | [damiandudycz@yahoo.com](https://repology.org/maintainer/damiandudycz@yahoo.com) |
| [dev-util/catppuccin-whiskers](https://github.com/gentoo/guru/tree/dev/dev-util/catppuccin-whiskers) | 2.4.0 | [2.5.1](https://github.com/catppuccin/whiskers/tags) | [somerand0mcat@hotmail.com](https://repology.org/maintainer/somerand0mcat@hotmail.com) |
| [dev-util/cmakelang](https://github.com/gentoo/guru/tree/dev/dev-util/cmakelang) | 0.6.13 | [pseudo-master](https://github.com/cheshirekow/cmake_format/tags) | [falbrechtskirchinger@gmail.com](https://repology.org/maintainer/falbrechtskirchinger@gmail.com) |
| [dev-util/codex](https://github.com/gentoo/guru/tree/dev/dev-util/codex) | 0.93.0 | [rust-v0.99.0-alpha.6](https://github.com/openai/codex/tags) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [dev-util/coq-lsp](https://github.com/gentoo/guru/tree/dev/dev-util/coq-lsp) | 0.1.9 | [0.2.5+8.20](https://github.com/ejgallego/coq-lsp/tags) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-util/distribution-gpg-keys](https://github.com/gentoo/guru/tree/dev/dev-util/distribution-gpg-keys) | 1.116 | [distribution-gpg-keys-1.117-1](https://github.com/rpm-software-management/distribution-gpg-keys/tags) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [dev-util/exercism](https://github.com/gentoo/guru/tree/dev/dev-util/exercism) | 3.2.0 | [3.5.8](https://github.com/exercism/cli/tags) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [dev-util/forgejo-runner](https://github.com/gentoo/guru/tree/dev/dev-util/forgejo-runner) | 12.6.1 | [12.6.3](https://github.com/gentoo-golang-dist/forgejo-runner/tags) | [negril.nx+gentoo@gmail.com](https://repology.org/maintainer/negril.nx+gentoo@gmail.com) |
| [dev-util/gemini-cli](https://github.com/gentoo/guru/tree/dev/dev-util/gemini-cli) | 0.25.0 | [0.28.0-preview.5](https://github.com/google-gemini/gemini-cli/tags) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [dev-util/git-pages-cli](https://github.com/gentoo/guru/tree/dev/dev-util/git-pages-cli) | 1.5.1 | [1.5.2](https://codeberg.org/git-pages/git-pages-cli/tags) | [demize@unstable.systems](https://repology.org/maintainer/demize@unstable.systems) |
| [dev-util/gitlab-ci-local-bin](https://github.com/gentoo/guru/tree/dev/dev-util/gitlab-ci-local-bin) | 4.56.0 | [4.64.1](https://github.com/firecow/gitlab-ci-local/tags) | [flow@gentoo.org](https://repology.org/maintainer/flow@gentoo.org) |
| [dev-util/go-task](https://github.com/gentoo/guru/tree/dev/dev-util/go-task) | 3.41.0 | [3.48.0](https://github.com/go-task/task/tags) | [sm+gentoo@skym.fi](https://repology.org/maintainer/sm+gentoo@skym.fi) |
| [dev-util/insomnia-bin](https://github.com/gentoo/guru/tree/dev/dev-util/insomnia-bin) | 2023.5.8 | [core@12.3.1](https://github.com/Kong/insomnia/tags) | [-](-) |
| [dev-util/kubetail-bin](https://github.com/gentoo/guru/tree/dev/dev-util/kubetail-bin) | 0.11.1 | [cli/v0.11.1](https://github.com/kubetail-org/kubetail/tags) | [andres@kubetail.com](https://repology.org/maintainer/andres@kubetail.com) |
| [dev-util/kubetail](https://github.com/gentoo/guru/tree/dev/dev-util/kubetail) | 0.11.1 | [cli/v0.11.1](https://github.com/kubetail-org/kubetail/tags) | [andres@kubetail.com](https://repology.org/maintainer/andres@kubetail.com) |
| [dev-util/libtypec-utils](https://github.com/gentoo/guru/tree/dev/dev-util/libtypec-utils) | 0.5.2 | [libtypec-0.5.1](https://github.com/Rajaram-Regupathy/libtypec/tags) | [adrian.ratiu@collabora.com](https://repology.org/maintainer/adrian.ratiu@collabora.com) |
| [dev-util/lottieconverter](https://github.com/gentoo/guru/tree/dev/dev-util/lottieconverter) | 0.2 | [r0.2](https://github.com/sot-tech/LottieConverter/tags) | [rrogalski@tutanota.com](https://repology.org/maintainer/rrogalski@tutanota.com) |
| [dev-util/mise](https://github.com/gentoo/guru/tree/dev/dev-util/mise) | 2025.12.12 | [2026.2.5](https://github.com/jdx/mise/tags) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [dev-util/mock-core-configs](https://github.com/gentoo/guru/tree/dev/dev-util/mock-core-configs) | 43.5 | [mock-core-configs-44.1-1](https://github.com/rpm-software-management/mock/tags) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [dev-util/mock](https://github.com/gentoo/guru/tree/dev/dev-util/mock) | 6.6 | [mock-core-configs-44.1-1](https://github.com/rpm-software-management/mock/tags) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [dev-util/ocamlformat](https://github.com/gentoo/guru/tree/dev/dev-util/ocamlformat) | 0.26.2 | [0.28.1](https://github.com/ocaml-ppx/ocamlformat/tags) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-util/ocp-indent](https://github.com/gentoo/guru/tree/dev/dev-util/ocp-indent) | 1.8.2 | [1.9.0](https://github.com/OCamlPro/ocp-indent/tags) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-util/opencode-bin](https://github.com/gentoo/guru/tree/dev/dev-util/opencode-bin) | 1.1.48 | [1.1.53](https://github.com/anomalyco/opencode/tags) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [dev-util/pifpaf](https://github.com/gentoo/guru/tree/dev/dev-util/pifpaf) | 3.3.0 | [3.4.0](https://github.com/jd/pifpaf/tags) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [dev-util/scc](https://github.com/gentoo/guru/tree/dev/dev-util/scc) | 3.4.0 | [3.6.0](https://github.com/boyter/scc/tags) | [Wuzy01@qq.com](https://repology.org/maintainer/Wuzy01@qq.com) |
| [dev-util/stripe-cli](https://github.com/gentoo/guru/tree/dev/dev-util/stripe-cli) | 1.34.0 | [1.35.0](https://github.com/stripe/stripe-cli/tags) | [-](-) |
| [dev-util/tailspin](https://github.com/gentoo/guru/tree/dev/dev-util/tailspin) | 5.4.5 | [5.5.0](https://github.com/bensadeh/tailspin/tags) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [dev-util/tflint-bin](https://github.com/gentoo/guru/tree/dev/dev-util/tflint-bin) | 0.46.0 | [0.60.0](https://github.com/terraform-linters/tflint/tags) | [-](-) |
| [dev-util/tinyxxd](https://github.com/gentoo/guru/tree/dev/dev-util/tinyxxd) | 1.3.7 | [1.3.10](https://github.com/xyproto/tinyxxd/tags) | [ingenarelitems@gmail.com](https://repology.org/maintainer/ingenarelitems@gmail.com) |
| [dev-util/tokei](https://github.com/gentoo/guru/tree/dev/dev-util/tokei) | 13.0.0 | [14.0.0](https://github.com/XAMPPRocky/tokei/tags) | [lo48576@hard-wi.red](https://repology.org/maintainer/lo48576@hard-wi.red) |
| [dev-util/trivy](https://github.com/gentoo/guru/tree/dev/dev-util/trivy) | 0.55.2 | [0.69.1](https://github.com/aquasecurity/trivy/tags) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [dev-util/wakatime-cli](https://github.com/gentoo/guru/tree/dev/dev-util/wakatime-cli) | 1.28.6 | [1.139.1](https://github.com/wakatime/wakatime-cli/tags) | [ezzieyguywuf@gmail.com](https://repology.org/maintainer/ezzieyguywuf@gmail.com) |
| [dev-vcs/ghorg](https://github.com/gentoo/guru/tree/dev/dev-vcs/ghorg) | 1.11.7 | [1.11.8](https://github.com/gabrie30/ghorg/tags) | [joe@wt.gd](https://repology.org/maintainer/joe@wt.gd) |
| [dev-zig/zls](https://github.com/gentoo/guru/tree/dev/dev-zig/zls) | 0.15.0 | [0.15.1](https://github.com/zigtools/zls/tags) | [bratishkaerik@landless-city.net](https://repology.org/maintainer/bratishkaerik@landless-city.net) |
| [games-action/ATLauncher](https://github.com/gentoo/guru/tree/dev/games-action/ATLauncher) | 3.4.40.1 | [3.4.40.2](https://github.com/ATLauncher/ATLauncher/tags) | [-](-) |
| [games-arcade/SpaceCadetPinball](https://github.com/gentoo/guru/tree/dev/games-arcade/SpaceCadetPinball) | 2.1.0 | [Release_2.1.0](https://github.com/k4zmu2a/SpaceCadetPinball/tags) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [games-arcade/opensurge](https://github.com/gentoo/guru/tree/dev/games-arcade/opensurge) | 0.6.1.2 | [0.6.1.3](https://github.com/alemart/opensurge/tags) | [contact@hacktivis.me](https://repology.org/maintainer/contact@hacktivis.me) |
| [games-board/fairy-stockfish](https://github.com/gentoo/guru/tree/dev/games-board/fairy-stockfish) | 14.0.1 | [fairy_sf_14_0_1_xq](https://github.com/ianfab/Fairy-Stockfish/tags) | [torokhov-s-a@yandex.ru](https://repology.org/maintainer/torokhov-s-a@yandex.ru) |
| [games-emulation/dosbox-x](https://github.com/gentoo/guru/tree/dev/games-emulation/dosbox-x) | 2026.01.02 | [dosbox-x-v2026.01.02](https://github.com/joncampbell123/dosbox-x/tags) | [liaoyuan@gmail.com](https://repology.org/maintainer/liaoyuan@gmail.com) |
| [games-engines/fs2_open](https://github.com/gentoo/guru/tree/dev/games-engines/fs2_open) | 24.2.0 | [release_25_0_0-RC11](https://github.com/scp-fs2open/fs2open.github.com/tags) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [games-engines/nxengine-evo](https://github.com/gentoo/guru/tree/dev/games-engines/nxengine-evo) | 2.6.5 | [2.6.5-1](https://github.com/nxengine/nxengine-evo/tags) | [contact@hacktivis.me](https://repology.org/maintainer/contact@hacktivis.me) |
| [games-engines/ponscripter-fork](https://github.com/gentoo/guru/tree/dev/games-engines/ponscripter-fork) | 3.0.2 | [4.0.1](https://github.com/07th-mod/ponscripter-fork/tags) | [contact@hacktivis.me](https://repology.org/maintainer/contact@hacktivis.me) |
| [games-fps/crispy-doom](https://github.com/gentoo/guru/tree/dev/games-fps/crispy-doom) | 6.0 | [crispy-doom-7.1](https://github.com/fabiangreffrath/crispy-doom/tags) | [-](-) |
| [games-misc/cbonsai](https://github.com/gentoo/guru/tree/dev/games-misc/cbonsai) | 1.3.1 | [1.4.2](https://gitlab.com/jallbrit/cbonsai/tags) | [-](-) |
| [games-puzzle/aaaaxy](https://github.com/gentoo/guru/tree/dev/games-puzzle/aaaaxy) | 1.5.250 | [1.6.338](https://github.com/divVerent/aaaaxy/tags) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [games-puzzle/katawa-shoujo](https://github.com/gentoo/guru/tree/dev/games-puzzle/katawa-shoujo) | 1.4.7 | [2.0.3](https://github.com/fleetingheart/ksre/tags) | [strdenis02@gmail.com](https://repology.org/maintainer/strdenis02@gmail.com) |
| [games-roguelike/cataclysm-dda](https://github.com/gentoo/guru/tree/dev/games-roguelike/cataclysm-dda) | 0h | [cdda-experimental-2026-02-07-0200](https://github.com/CleverRaven/Cataclysm-DDA/tags) | [strategictraveler@proton.me](https://repology.org/maintainer/strategictraveler@proton.me) |
| [games-strategy/unciv-bin](https://github.com/gentoo/guru/tree/dev/games-strategy/unciv-bin) | 4.15.6 | [4.19.11](https://github.com/yairm210/Unciv/tags) | [fkobi@pm.me](https://repology.org/maintainer/fkobi@pm.me) |
| [games-util/ProtonUp-Qt](https://github.com/gentoo/guru/tree/dev/games-util/ProtonUp-Qt) | 2.13.0 | [2.14.0](https://github.com/DavidoTek/ProtonUp-Qt/tags) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [games-util/dwarf-therapist](https://github.com/gentoo/guru/tree/dev/games-util/dwarf-therapist) | 42.1.5 | [42.1.21](https://github.com/Dwarf-Therapist/Dwarf-Therapist/tags) | [ezzieyguywuf@gmail.com](https://repology.org/maintainer/ezzieyguywuf@gmail.com) |
| [games-util/goverlay](https://github.com/gentoo/guru/tree/dev/games-util/goverlay) | 1.2 | [1.7.3](https://github.com/benjamimgois/goverlay/tags) | [1758961307@qq.com](https://repology.org/maintainer/1758961307@qq.com) |
| [games-util/itch-bin](https://github.com/gentoo/guru/tree/dev/games-util/itch-bin) | 26.1.9 | [26.6.0](https://github.com/itchio/itch/tags) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [games-util/mangohud](https://github.com/gentoo/guru/tree/dev/games-util/mangohud) | 0.8.2 | [0.8.3-rc1](https://github.com/flightlessmango/MangoHud/tags) | [adel.ks@zegrapher.com](https://repology.org/maintainer/adel.ks@zegrapher.com) |
| [games-util/minigalaxy](https://github.com/gentoo/guru/tree/dev/games-util/minigalaxy) | 1.4.0 | [1.4.1](https://github.com/sharkwouter/minigalaxy/tags) | [-](-) |
| [games-util/r2modman-bin](https://github.com/gentoo/guru/tree/dev/games-util/r2modman-bin) | 3.1.51 | [3.2.14](https://github.com/ebkr/r2modmanPlus/tags) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [games-util/sdl2-gamepad-mapper](https://github.com/gentoo/guru/tree/dev/games-util/sdl2-gamepad-mapper) | 0.0.8 | [0.0.9](https://gitlab.com/ryochan7/sdl2-gamepad-mapper/tags) | [carana2099@gmail.com](https://repology.org/maintainer/carana2099@gmail.com) |
| [gnome-extra/vvmplayer](https://github.com/gentoo/guru/tree/dev/gnome-extra/vvmplayer) | 1.4 | [2.6](https://gitlab.com/kop316/vvmplayer/tags) | [gjdijkman@gjdwebserver.nl](https://repology.org/maintainer/gjdijkman@gjdwebserver.nl) |
| [gnome-extra/yad](https://github.com/gentoo/guru/tree/dev/gnome-extra/yad) | 14.1 | [14.2](https://github.com/v1cont/yad/tags) | [plevine457@gmail.com](https://repology.org/maintainer/plevine457@gmail.com) |
| [gui-apps/aylurs-gtk-shell](https://github.com/gentoo/guru/tree/dev/gui-apps/aylurs-gtk-shell) | 1.8.2 | [3.1.1](https://github.com/Aylur/ags/tags) | [chinh4thepro@gmail.com](https://repology.org/maintainer/chinh4thepro@gmail.com) |
| [gui-apps/coreimage](https://github.com/gentoo/guru/tree/dev/gui-apps/coreimage) | 5.0.0 | [5.0.1](https://gitlab.com/cubocore/coreapps/coreimage/tags) | [-](-) |
| [gui-apps/corestats](https://github.com/gentoo/guru/tree/dev/gui-apps/corestats) | 5.0.0 | [5.0.1](https://gitlab.com/cubocore/coreapps/corestats/tags) | [-](-) |
| [gui-apps/darkman](https://github.com/gentoo/guru/tree/dev/gui-apps/darkman) | 2.2.0 | [2.3.1](https://gitlab.com/WhyNotHugo/darkman/tags) | [mm1ke@gentoo.org](https://repology.org/maintainer/mm1ke@gentoo.org) |
| [gui-apps/fuzzel](https://github.com/gentoo/guru/tree/dev/gui-apps/fuzzel) | 1.13.1 | [1.14.0](https://codeberg.org/dnkl/fuzzel/tags) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [gui-apps/gradience](https://github.com/gentoo/guru/tree/dev/gui-apps/gradience) | 0.4.1 | [0.8.0-beta1](https://github.com/GradienceTeam/Gradience/tags) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/hyprnome](https://github.com/gentoo/guru/tree/dev/gui-apps/hyprnome) | 0.3.0 | [0.3.1](https://github.com/donovanglover/hyprnome/tags) | [unlsycn@unlsycn.com](https://repology.org/maintainer/unlsycn@unlsycn.com) |
| [gui-apps/hyprpaper](https://github.com/gentoo/guru/tree/dev/gui-apps/hyprpaper) | 0.7.6 | [0.8.3](https://github.com/hyprwm/hyprpaper/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [gui-apps/hyprshade](https://github.com/gentoo/guru/tree/dev/gui-apps/hyprshade) | 3.2.1 | [4.0.1](https://github.com/loqusion/hyprshade/tags) | [johnmh@johnmh.me](https://repology.org/maintainer/johnmh@johnmh.me) |
| [gui-apps/hyprsunset](https://github.com/gentoo/guru/tree/dev/gui-apps/hyprsunset) | 0.2.0 | [0.3.3](https://github.com/hyprwm/hyprsunset/tags) | [saigon-tech@tuta.io](https://repology.org/maintainer/saigon-tech@tuta.io) |
| [gui-apps/hyprswitch](https://github.com/gentoo/guru/tree/dev/gui-apps/hyprswitch) | 1.3.1 | [4.9.2](https://github.com/H3rmt/hyprswitch/tags) | [unlsycn@unlsycn.com](https://repology.org/maintainer/unlsycn@unlsycn.com) |
| [gui-apps/intiface-central-bin](https://github.com/gentoo/guru/tree/dev/gui-apps/intiface-central-bin) | 2.6.4 | [3.0.0+36](https://github.com/intiface/intiface-central/tags) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [gui-apps/meteo-qt](https://github.com/gentoo/guru/tree/dev/gui-apps/meteo-qt) | 4.2 | [4.3](https://github.com/dglent/meteo-qt/tags) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [gui-apps/noctalia-shell](https://github.com/gentoo/guru/tree/dev/gui-apps/noctalia-shell) | 4.3.3 | [4.4.0](https://github.com/noctalia-dev/noctalia-shell/tags) | [luke.gompz@gmail.com](https://repology.org/maintainer/luke.gompz@gmail.com) |
| [gui-apps/nwg-clipman](https://github.com/gentoo/guru/tree/dev/gui-apps/nwg-clipman) | 0.2.5 | [0.2.8](https://github.com/nwg-piotr/nwg-clipman/tags) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/nwg-displays](https://github.com/gentoo/guru/tree/dev/gui-apps/nwg-displays) | 0.3.25 | [0.3.27](https://github.com/nwg-piotr/nwg-displays/tags) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/nwg-hello](https://github.com/gentoo/guru/tree/dev/gui-apps/nwg-hello) | 0.4.0 | [0.4.2](https://github.com/nwg-piotr/nwg-hello/tags) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/nwg-panel](https://github.com/gentoo/guru/tree/dev/gui-apps/nwg-panel) | 0.10.12 | [0.10.13](https://github.com/nwg-piotr/nwg-panel/tags) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/nwg](https://github.com/gentoo/guru/tree/dev/gui-apps/nwg) | 0 | [0.5.49](https://github.com/nwg-piotr/nwg-shell/tags) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/openrefine](https://github.com/gentoo/guru/tree/dev/gui-apps/openrefine) | 3.9.3 | [3.10-beta1](https://github.com/OpenRefine/OpenRefine/tags) | [-](-) |
| [gui-apps/pop-launcher](https://github.com/gentoo/guru/tree/dev/gui-apps/pop-launcher) | 1.2.1 | [1.2.7](https://github.com/pop-os/launcher/tags) | [dev@dyama.net](https://repology.org/maintainer/dev@dyama.net) |
| [gui-apps/rofi-wayland](https://github.com/gentoo/guru/tree/dev/gui-apps/rofi-wayland) | 1.7.8 | [1.7.9+wayland1](https://github.com/lbonn/rofi/tags) | [nvraxn@gmail.com](https://repology.org/maintainer/nvraxn@gmail.com) |
| [gui-apps/satty](https://github.com/gentoo/guru/tree/dev/gui-apps/satty) | 0.19.0 | [0.20.1](https://github.com/gabm/satty/tags) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [gui-apps/sddm-conf](https://github.com/gentoo/guru/tree/dev/gui-apps/sddm-conf) | 0.3.0 | [0.4.0](https://github.com/qtilities/sddm-conf/tags) | [-](-) |
| [gui-apps/sfwbar](https://github.com/gentoo/guru/tree/dev/gui-apps/sfwbar) | 1.0 | [1.0_beta16.1](https://github.com/LBCrion/sfwbar/tags) | [harley@hosers.org](https://repology.org/maintainer/harley@hosers.org) |
| [gui-apps/showmethekey](https://github.com/gentoo/guru/tree/dev/gui-apps/showmethekey) | 1.13.1 | [1.19.0](https://github.com/AlynxZhou/showmethekey/tags) | [-](-) |
| [gui-apps/swaylock-plugin](https://github.com/gentoo/guru/tree/dev/gui-apps/swaylock-plugin) | 1.8.0 | [1.8.5](https://github.com/mstoeckl/swaylock-plugin/tags) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/swayosd](https://github.com/gentoo/guru/tree/dev/gui-apps/swayosd) | 0.2.1 | [0.3.0](https://github.com/ErikReider/SwayOSD/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [gui-apps/sworkstyle](https://github.com/gentoo/guru/tree/dev/gui-apps/sworkstyle) | 1.3.5 | [1.3.8](https://github.com/Lyr-7D1h/swayest_workstyle/tags) | [ethan.twardy@gmail.com](https://repology.org/maintainer/ethan.twardy@gmail.com) |
| [gui-apps/tessen](https://github.com/gentoo/guru/tree/dev/gui-apps/tessen) | 2.2.1 | [2.2.3](https://github.com/ayushnix/tessen/tags) | [](https://repology.org/maintainer/) |
| [gui-apps/walker](https://github.com/gentoo/guru/tree/dev/gui-apps/walker) | 0.13.26 | [2.14.1](https://github.com/abenz1267/walker/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [gui-apps/wbg](https://github.com/gentoo/guru/tree/dev/gui-apps/wbg) | 1.2.0 | [1.3.0](https://codeberg.org/dnkl/wbg/tags) | [leohdz172@proton.me](https://repology.org/maintainer/leohdz172@proton.me) |
| [gui-apps/wl-clip-persist](https://github.com/gentoo/guru/tree/dev/gui-apps/wl-clip-persist) | 0.4.3 | [0.5.0](https://github.com/Linus789/wl-clip-persist/tags) | [johnmh@johnmh.me](https://repology.org/maintainer/johnmh@johnmh.me) |
| [gui-apps/wl-mirror](https://github.com/gentoo/guru/tree/dev/gui-apps/wl-mirror) | 0.18.3 | [0.18.4](https://github.com/Ferdi265/wl-mirror/tags) | [gentoo@denoncin.fr](https://repology.org/maintainer/gentoo@denoncin.fr) |
| [gui-apps/xremap](https://github.com/gentoo/guru/tree/dev/gui-apps/xremap) | 0.14.11 | [0.14.12](https://github.com/xremap/xremap/tags) | [dev@dyama.net](https://repology.org/maintainer/dev@dyama.net) |
| [gui-libs/libcprime](https://github.com/gentoo/guru/tree/dev/gui-libs/libcprime) | 5.0.0 | [5.0.1](https://gitlab.com/cubocore/libcprime/tags) | [-](-) |
| [gui-libs/libcsys](https://github.com/gentoo/guru/tree/dev/gui-libs/libcsys) | 5.0.0 | [5.0.1](https://gitlab.com/cubocore/libcsys/tags) | [-](-) |
| [gui-libs/qtutilities](https://github.com/gentoo/guru/tree/dev/gui-libs/qtutilities) | 6.18.4 | [6.19.1](https://github.com/Martchus/qtutilities/tags) | [esteve.varela@gmail.com](https://repology.org/maintainer/esteve.varela@gmail.com) |
| [gui-wm/mangowc](https://github.com/gentoo/guru/tree/dev/gui-wm/mangowc) | 0.10.10 | [0.12.0](https://github.com/DreamMaoMao/mangowc/tags) | [sav.boyar@gmail.com](https://repology.org/maintainer/sav.boyar@gmail.com) |
| [mail-client/mailspring-bin](https://github.com/gentoo/guru/tree/dev/mail-client/mailspring-bin) | 1.17.2 | [1.17.3](https://github.com/Foundry376/Mailspring/tags) | [adel.ks@zegrapher.com](https://repology.org/maintainer/adel.ks@zegrapher.com) |
| [mail-client/tutanota-desktop-bin](https://github.com/gentoo/guru/tree/dev/mail-client/tutanota-desktop-bin) | 319.260107.1 | [tutanota-ios-release-325.260127.0](https://github.com/tutao/tutanota/tags) | [thysupremematrix@tuta.io](https://repology.org/maintainer/thysupremematrix@tuta.io) |
| [mail-filter/postfix-mta-sts-resolver](https://github.com/gentoo/guru/tree/dev/mail-filter/postfix-mta-sts-resolver) | 1.4.0 | [1.5.1](https://github.com/Snawoot/postfix-mta-sts-resolver/tags) | [-](-) |
| [media-fonts/blobmoji](https://github.com/gentoo/guru/tree/dev/media-fonts/blobmoji) | 15.0 | [15.1-beta1](https://github.com/C1710/blobmoji/tags) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [media-fonts/dseg](https://github.com/gentoo/guru/tree/dev/media-fonts/dseg) | 0.46 | [0.50beta1](https://github.com/keshikan/DSEG/tags) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [media-fonts/monaspace](https://github.com/gentoo/guru/tree/dev/media-fonts/monaspace) | 1.200 | [1.301](https://github.com/githubnext/monaspace/tags) | [dev@greener.sh](https://repology.org/maintainer/dev@greener.sh) |
| [media-fonts/overpass](https://github.com/gentoo/guru/tree/dev/media-fonts/overpass) | 3.0.4 | [3.0.5](https://github.com/RedHatOfficial/Overpass/tags) | [andrea.postiglione@gmail.com](https://repology.org/maintainer/andrea.postiglione@gmail.com) |
| [media-fonts/source-han-serif](https://github.com/gentoo/guru/tree/dev/media-fonts/source-han-serif) | 2.003 | [2.003R](https://github.com/adobe-fonts/source-han-serif/tags) | [rossbridger.cc@gmail.com](https://repology.org/maintainer/rossbridger.cc@gmail.com) |
| [media-gfx/bambustudio-bin](https://github.com/gentoo/guru/tree/dev/media-gfx/bambustudio-bin) | 02.05.00.67 | [02.05.01.52](https://github.com/bambulab/BambuStudio/tags) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [media-gfx/dnglab](https://github.com/gentoo/guru/tree/dev/media-gfx/dnglab) | 0.6.1 | [0.7.1](https://github.com/dnglab/dnglab/tags) | [brettalcox@proton.me](https://repology.org/maintainer/brettalcox@proton.me) |
| [media-gfx/glslViewer](https://github.com/gentoo/guru/tree/dev/media-gfx/glslViewer) | 3.2.4 | [3.5.1](https://github.com/patriciogonzalezvivo/glslViewer/tags) | [dangduong31205@gmail.com](https://repology.org/maintainer/dangduong31205@gmail.com) |
| [media-gfx/pdf4qt](https://github.com/gentoo/guru/tree/dev/media-gfx/pdf4qt) | 1.5.1.0 | [1.5.3.1](https://github.com/JakubMelka/PDF4QT/tags) | [fatzer2@gmail.com](https://repology.org/maintainer/fatzer2@gmail.com) |
| [media-gfx/qview](https://github.com/gentoo/guru/tree/dev/media-gfx/qview) | 6.1 | [7.1](https://github.com/jurplel/qView/tags) | [dnovomesky@gmail.com](https://repology.org/maintainer/dnovomesky@gmail.com) |
| [media-gfx/sic](https://github.com/gentoo/guru/tree/dev/media-gfx/sic) | 0.22.4 | [0.24.0](https://github.com/foresterre/sic/tags) | [mustafasalih1991@gmail.com](https://repology.org/maintainer/mustafasalih1991@gmail.com) |
| [media-gfx/vpuppr](https://github.com/gentoo/guru/tree/dev/media-gfx/vpuppr) | 0.9.0 | [0.10.0-alpha.1](https://github.com/virtual-puppet-project/vpuppr/tags) | [navi@vlhl.dev](https://repology.org/maintainer/navi@vlhl.dev) |
| [media-libs/alvr](https://github.com/gentoo/guru/tree/dev/media-libs/alvr) | 16.0.0 | [20.14.1](https://github.com/alvr-org/ALVR/tags) | [emil@emiljacobs.nl](https://repology.org/maintainer/emil@emiljacobs.nl) |
| [media-libs/amdvlk-bin](https://github.com/gentoo/guru/tree/dev/media-libs/amdvlk-bin) | 2025.2.1 | [-2025.Q2.1](https://github.com/GPUOpen-Drivers/AMDVLK/tags) | [denis7774@gmail.com](https://repology.org/maintainer/denis7774@gmail.com) |
| [media-libs/amdvlk](https://github.com/gentoo/guru/tree/dev/media-libs/amdvlk) | 2025.2.1 | [-2025.Q2.1](https://github.com/GPUOpen-Drivers/AMDVLK/tags) | [-](-) |
| [media-libs/grok](https://github.com/gentoo/guru/tree/dev/media-libs/grok) | 11.0.0 | [20.0.5](https://github.com/GrokImageCompression/grok/tags) | [flow@gentoo.org](https://repology.org/maintainer/flow@gentoo.org) |
| [media-libs/imgui](https://github.com/gentoo/guru/tree/dev/media-libs/imgui) | 1.91.6 | [1.92.5](https://github.com/ocornut/imgui/tags) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [media-libs/implot](https://github.com/gentoo/guru/tree/dev/media-libs/implot) | 0.16 | [0.17](https://github.com/epezent/implot/tags) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [media-libs/openvr](https://github.com/gentoo/guru/tree/dev/media-libs/openvr) | 1.23.8 | [2.12.14](https://github.com/ValveSoftware/openvr/tags) | [sam@binarycake.ca](https://repology.org/maintainer/sam@binarycake.ca) |
| [media-libs/openxr-loader](https://github.com/gentoo/guru/tree/dev/media-libs/openxr-loader) | 1.1.54 | [release-1.1.54](https://github.com/KhronosGroup/OpenXR-SDK/tags) | [contact@hacktivis.me](https://repology.org/maintainer/contact@hacktivis.me) |
| [media-libs/vvdec](https://github.com/gentoo/guru/tree/dev/media-libs/vvdec) | 2.3.0 | [3.1.0](https://github.com/fraunhoferhhi/vvdec/tags) | [benoit.dufour@mail.com](https://repology.org/maintainer/benoit.dufour@mail.com) |
| [media-libs/vvenc](https://github.com/gentoo/guru/tree/dev/media-libs/vvenc) | 1.11.1 | [1.14.0](https://github.com/fraunhoferhhi/vvenc/tags) | [benoit.dufour@mail.com](https://repology.org/maintainer/benoit.dufour@mail.com) |
| [media-libs/xrizer](https://github.com/gentoo/guru/tree/dev/media-libs/xrizer) | 0.3.0 | [0.4](https://github.com/Supreeeme/xrizer/tags) | [sam@binarycake.ca](https://repology.org/maintainer/sam@binarycake.ca) |
| [media-sound/Tauon](https://github.com/gentoo/guru/tree/dev/media-sound/Tauon) | 8.2.3 | [Pre-release-Tauon-2026-01-29-9e2dd3c](https://github.com/Taiko2k/Tauon/tags) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [media-sound/corrscope](https://github.com/gentoo/guru/tree/dev/media-sound/corrscope) | 0.10.1 | [0.11.0](https://github.com/corrscope/corrscope/tags) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [media-sound/furnace](https://github.com/gentoo/guru/tree/dev/media-sound/furnace) | 0.6.7 | [0.6.8.3](https://github.com/tildearrow/furnace/tags) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [media-sound/jacktrip](https://github.com/gentoo/guru/tree/dev/media-sound/jacktrip) | 2.4.0 | [2.7.1](https://github.com/jacktrip/jacktrip/tags) | [nex+b-g-o@nexadn.de](https://repology.org/maintainer/nex+b-g-o@nexadn.de) |
| [media-sound/kew](https://github.com/gentoo/guru/tree/dev/media-sound/kew) | 2.4.4 | [3.7.3](https://github.com/ravachol/kew/tags) | [emergeviolet@protonmail.com](https://repology.org/maintainer/emergeviolet@protonmail.com) |
| [media-sound/libcava](https://github.com/gentoo/guru/tree/dev/media-sound/libcava) | 0.10.2 | [0.10.7-beta](https://github.com/LukashonakV/cava/tags) | [ceres@ceressees.dev](https://repology.org/maintainer/ceres@ceressees.dev) |
| [media-sound/mopidy](https://github.com/gentoo/guru/tree/dev/media-sound/mopidy) | 3.4.2 | [4.0.0a13](https://github.com/mopidy/mopidy/tags) | [-](-) |
| [media-sound/noson-app](https://github.com/gentoo/guru/tree/dev/media-sound/noson-app) | 5.6.8 | [5.6.13](https://github.com/janbar/noson-app/tags) | [danipo@gmail.com](https://repology.org/maintainer/danipo@gmail.com) |
| [media-sound/nuclear-bin](https://github.com/gentoo/guru/tree/dev/media-sound/nuclear-bin) | 0.6.30 | [0.6.48](https://github.com/nukeop/nuclear/tags) | [-](-) |
| [media-sound/opensoundmeter](https://github.com/gentoo/guru/tree/dev/media-sound/opensoundmeter) | 1.2.2 | [1.5.2](https://github.com/psmokotnin/osm/tags) | [nex+b-g-o@nexadn.de](https://repology.org/maintainer/nex+b-g-o@nexadn.de) |
| [media-sound/openutau](https://github.com/gentoo/guru/tree/dev/media-sound/openutau) | 0.1.529 | [0.1.567](https://github.com/stakira/OpenUtau/tags) | [chinh4thepro@gmail.com](https://repology.org/maintainer/chinh4thepro@gmail.com) |
| [media-sound/piper](https://github.com/gentoo/guru/tree/dev/media-sound/piper) | 1.4.0 | [1.4.1](https://github.com/OHF-Voice/piper1-gpl/tags) | [contact@paveloom.dev](https://repology.org/maintainer/contact@paveloom.dev) |
| [media-sound/qloud](https://github.com/gentoo/guru/tree/dev/media-sound/qloud) | 1.4.2 | [1.4.3](https://github.com/molke-productions/qloud/tags) | [-](-) |
| [media-sound/rmpc](https://github.com/gentoo/guru/tree/dev/media-sound/rmpc) | 0.10.0 | [0.11.0](https://github.com/mierak/rmpc/tags) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [media-sound/rsgain](https://github.com/gentoo/guru/tree/dev/media-sound/rsgain) | 3.5.3 | [3.6](https://github.com/complexlogic/rsgain/tags) | [misanthropos@gmx.net](https://repology.org/maintainer/misanthropos@gmx.net) |
| [media-sound/spot](https://github.com/gentoo/guru/tree/dev/media-sound/spot) | 0.4.0 | [0.5.0](https://github.com/xou816/spot/tags) | [-](-) |
| [media-sound/spotify-player](https://github.com/gentoo/guru/tree/dev/media-sound/spotify-player) | 0.21.1 | [0.21.3](https://github.com/aome510/spotify-player/tags) | [brettalcox@proton.me](https://repology.org/maintainer/brettalcox@proton.me) |
| [media-sound/spotube-bin](https://github.com/gentoo/guru/tree/dev/media-sound/spotube-bin) | 3.8.0 | [5.1.0](https://github.com/KRTirtho/spotube/tags) | [aidenwingard2@gmail.com](https://repology.org/maintainer/aidenwingard2@gmail.com) |
| [media-sound/tenacity](https://github.com/gentoo/guru/tree/dev/media-sound/tenacity) | 1.3.4 | [1.4-alpha1](https://codeberg.org/tenacityteam/tenacity/tags) | [truffle074@gmail.com](https://repology.org/maintainer/truffle074@gmail.com) |
| [media-video/clapper](https://github.com/gentoo/guru/tree/dev/media-video/clapper) | 0.8.0 | [0.10.0](https://github.com/Rafostar/clapper/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [media-video/kikoplay](https://github.com/gentoo/guru/tree/dev/media-video/kikoplay) | 0.9.3 | [2.0.0](https://github.com/KikoPlayProject/KikoPlay/tags) | [-](-) |
| [media-video/kooha](https://github.com/gentoo/guru/tree/dev/media-video/kooha) | 2.2.3 | [2.3.1](https://github.com/SeaDve/Kooha/tags) | [-](-) |
| [media-video/lossless-cut](https://github.com/gentoo/guru/tree/dev/media-video/lossless-cut) | 3.64.0 | [3.68.0](https://github.com/mifi/lossless-cut/tags) | [-](-) |
| [media-video/megapixels](https://github.com/gentoo/guru/tree/dev/media-video/megapixels) | 1.4.3 | [1.7.0](https://gitlab.com/postmarketOS/megapixels/tags) | [gjdijkman@gjdwebserver.nl](https://repology.org/maintainer/gjdijkman@gjdwebserver.nl) |
| [media-video/obs-multi-rtmp](https://github.com/gentoo/guru/tree/dev/media-video/obs-multi-rtmp) | 0.6.0.1 | [0.7.3.2](https://github.com/sorayuki/obs-multi-rtmp/tags) | [adel.ks@zegrapher.com](https://repology.org/maintainer/adel.ks@zegrapher.com) |
| [media-video/uxplay](https://github.com/gentoo/guru/tree/dev/media-video/uxplay) | 1.72.3 | [1.73](https://github.com/FDH2/UxPlay/tags) | [petrus.zy.07@gmail.com](https://repology.org/maintainer/petrus.zy.07@gmail.com) |
| [mpv-plugin/SmartCopyPaste](https://github.com/gentoo/guru/tree/dev/mpv-plugin/SmartCopyPaste) | 3.1 | [25-09-2023](https://github.com/Eisa01/mpv-scripts/tags) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [mpv-plugin/mpv-plugin-xrandr](https://github.com/gentoo/guru/tree/dev/mpv-plugin/mpv-plugin-xrandr) | 2023.06.19 | [tags/r2023_06_19](https://gitlab.com/lvml/mpv-plugin-xrandr/tags) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [net-analyzer/gping](https://github.com/gentoo/guru/tree/dev/net-analyzer/gping) | 1.20.1 | [gping-v1.20.1](https://github.com/orf/gping/tags) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [net-client/kristall](https://github.com/gentoo/guru/tree/dev/net-client/kristall) | 0.4 | [V0.4](https://github.com/MasterQ32/kristall/tags) | [-](-) |
| [net-dns/AdGuardHome](https://github.com/gentoo/guru/tree/dev/net-dns/AdGuardHome) | 0.107.71 | [0.108.0-b.81](https://github.com/AdguardTeam/AdGuardHome/tags) | [me@rahil.rocks](https://repology.org/maintainer/me@rahil.rocks) |
| [net-im/element-desktop](https://github.com/gentoo/guru/tree/dev/net-im/element-desktop) | 1.12.7 | [1.12.10-rc.0](https://github.com/element-hq/element-web/tags) | [filip@kszczot.pl](https://repology.org/maintainer/filip@kszczot.pl) |
| [net-im/flare](https://github.com/gentoo/guru/tree/dev/net-im/flare) | 0.12.0 | [0.18.1](https://gitlab.com/schmiddi-on-mobile/flare/tags) | [-](-) |
| [net-im/gomuks](https://github.com/gentoo/guru/tree/dev/net-im/gomuks) | 0.3.1 | [0.2601.0](https://github.com/tulir/gomuks/tags) | [amber@vnetwork.com](https://repology.org/maintainer/amber@vnetwork.com) |
| [net-im/gurk-rs](https://github.com/gentoo/guru/tree/dev/net-im/gurk-rs) | 0.7.1 | [0.8.1](https://github.com/boxdot/gurk-rs/tags) | [beatussum@protonmail.com](https://repology.org/maintainer/beatussum@protonmail.com) |
| [net-im/iamb](https://github.com/gentoo/guru/tree/dev/net-im/iamb) | 0.0.10 | [0.0.11](https://github.com/ulyssa/iamb/tags) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [net-im/jitsi-meet](https://github.com/gentoo/guru/tree/dev/net-im/jitsi-meet) | 2025.10.0 | [2026.1.0](https://github.com/jitsi/jitsi-meet-electron/tags) | [joe@wt.gd](https://repology.org/maintainer/joe@wt.gd) |
| [net-im/manyverse-bin](https://github.com/gentoo/guru/tree/dev/net-im/manyverse-bin) | 0.2310.9 | [0.2407.28-beta](https://github.com/staltz/manyverse/tags) | [-](-) |
| [net-im/maubot](https://github.com/gentoo/guru/tree/dev/net-im/maubot) | 0.5.1 | [0.6.0](https://github.com/maubot/maubot/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [net-im/mautrix-discord](https://github.com/gentoo/guru/tree/dev/net-im/mautrix-discord) | 0.7.2 | [0.2511.0](https://github.com/mautrix/slack/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [net-im/mautrix-meta](https://github.com/gentoo/guru/tree/dev/net-im/mautrix-meta) | 0.2510.0 | [0.2512.0](https://github.com/mautrix/meta/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [net-im/mautrix-slack](https://github.com/gentoo/guru/tree/dev/net-im/mautrix-slack) | 0.1.4 | [0.2511.0](https://github.com/mautrix/slack/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [net-im/mautrix-whatsapp](https://github.com/gentoo/guru/tree/dev/net-im/mautrix-whatsapp) | 0.12.5 | [0.2601.0](https://github.com/mautrix/whatsapp/tags) | [gentoo@chuso.net](https://repology.org/maintainer/gentoo@chuso.net) |
| [net-im/session-desktop-bin](https://github.com/gentoo/guru/tree/dev/net-im/session-desktop-bin) | 1.15.2 | [1.17.8](https://github.com/session-foundation/session-desktop/tags) | [paul007-dev@outlook.com](https://repology.org/maintainer/paul007-dev@outlook.com) |
| [net-im/teams-for-linux](https://github.com/gentoo/guru/tree/dev/net-im/teams-for-linux) | 2.6.18 | [2.7.3](https://github.com/IsmaelMartinez/teams-for-linux/tags) | [colonia_duck@posteo.net](https://repology.org/maintainer/colonia_duck@posteo.net) |
| [net-im/vesktop-bin](https://github.com/gentoo/guru/tree/dev/net-im/vesktop-bin) | 1.6.3 | [1.6.4](https://github.com/Vencord/Vesktop/tags) | [chinh4thepro@gmail.com](https://repology.org/maintainer/chinh4thepro@gmail.com) |
| [net-im/zapzap](https://github.com/gentoo/guru/tree/dev/net-im/zapzap) | 6.2.4 | [6.2.10](https://github.com/rafatosta/zapzap/tags) | [esteve.varela@gmail.com](https://repology.org/maintainer/esteve.varela@gmail.com) |
| [net-irc/tiny](https://github.com/gentoo/guru/tree/dev/net-irc/tiny) | 0.12.0 | [0.13.0](https://github.com/osa1/tiny/tags) | [](https://repology.org/maintainer/) |
| [net-libs/ixwebsocket](https://github.com/gentoo/guru/tree/dev/net-libs/ixwebsocket) | 11.4.4 | [11.4.6](https://github.com/machinezone/IXWebSocket/tags) | [rmicielski@purelymail.com](https://repology.org/maintainer/rmicielski@purelymail.com) |
| [net-libs/kcgi](https://github.com/gentoo/guru/tree/dev/net-libs/kcgi) | 0.13.4 | [VERSION_1_0_1](https://github.com/kristapsdz/kcgi/tags) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [net-mail/hydroxide](https://github.com/gentoo/guru/tree/dev/net-mail/hydroxide) | 0.2.29 | [0.2.31](https://github.com/emersion/hydroxide/tags) | [leohdz172@proton.me](https://repology.org/maintainer/leohdz172@proton.me) |
| [net-misc/FORT-validator](https://github.com/gentoo/guru/tree/dev/net-misc/FORT-validator) | 1.6.2 | [1.6.7](https://github.com/NICMx/FORT-validator/tags) | [alarig@swordarmor.fr](https://repology.org/maintainer/alarig@swordarmor.fr) |
| [net-misc/freetube-bin](https://github.com/gentoo/guru/tree/dev/net-misc/freetube-bin) | 0.23.13 | [0.23.13-beta](https://github.com/FreeTubeApp/FreeTube/tags) | [-](-) |
| [net-misc/gdown](https://github.com/gentoo/guru/tree/dev/net-misc/gdown) | 5.2.0 | [5.2.1](https://github.com/wkentaro/gdown/tags) | [-](-) |
| [net-misc/iipsrv](https://github.com/gentoo/guru/tree/dev/net-misc/iipsrv) | 1.3 | [iipsrv-1.3](https://github.com/ruven/iipsrv/tags) | [ruven@users.sourceforge.net](https://repology.org/maintainer/ruven@users.sourceforge.net) |
| [net-misc/megasync](https://github.com/gentoo/guru/tree/dev/net-misc/megasync) | 6.1.1.0 | [6.1.1.0_Linux](https://github.com/meganz/MEGAsync/tags) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [net-misc/myip](https://github.com/gentoo/guru/tree/dev/net-misc/myip) | 1.2.1 | [1.2.4](https://github.com/Snawoot/myip/tags) | [marco@sirabella.org](https://repology.org/maintainer/marco@sirabella.org) |
| [net-misc/ooni-probe-cli](https://github.com/gentoo/guru/tree/dev/net-misc/ooni-probe-cli) | 3.24.0 | [3.28.0](https://github.com/ooni/probe-cli/tags) | [eli.burch@burchbytes.com](https://repology.org/maintainer/eli.burch@burchbytes.com) |
| [net-misc/peertube-viewer-rs](https://github.com/gentoo/guru/tree/dev/net-misc/peertube-viewer-rs) | 1.8.6 | [1.8.7](https://gitlab.com/peertube-viewer/peertube-viewer-rs/tags) | [-](-) |
| [net-misc/sshx](https://github.com/gentoo/guru/tree/dev/net-misc/sshx) | 0.2.4 | [0.4.1](https://github.com/ekzhang/sshx/tags) | [yangmame@icloud.com](https://repology.org/maintainer/yangmame@icloud.com) |
| [net-misc/wstunnel](https://github.com/gentoo/guru/tree/dev/net-misc/wstunnel) | 10.5.1 | [10.5.2](https://github.com/erebe/wstunnel/tags) | [nicolas.parlant@parhuet.fr](https://repology.org/maintainer/nicolas.parlant@parhuet.fr) |
| [net-misc/xmrig-mo](https://github.com/gentoo/guru/tree/dev/net-misc/xmrig-mo) | 6.22.2 | [6.25.0-mo1](https://github.com/MoneroOcean/xmrig/tags) | [kaythomas@pm.me](https://repology.org/maintainer/kaythomas@pm.me) |
| [net-news/newsraft](https://github.com/gentoo/guru/tree/dev/net-news/newsraft) | 0.34 | [newsraft-0.35](https://codeberg.org/newsraft/newsraft/tags) | [eli.burch@burchbytes.com](https://repology.org/maintainer/eli.burch@burchbytes.com) |
| [net-p2p/bisq-bin](https://github.com/gentoo/guru/tree/dev/net-p2p/bisq-bin) | 1.9.14 | [1.9.22](https://github.com/bisq-network/exchange/tags) | [benoit.dufour@mail.com](https://repology.org/maintainer/benoit.dufour@mail.com) |
| [net-p2p/gridcoin](https://github.com/gentoo/guru/tree/dev/net-p2p/gridcoin) | 5.4.9.0 | [5.4.9.7-testnet](https://github.com/gridcoin-community/Gridcoin-Research/tags) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [net-p2p/ipfs-desktop-bin](https://github.com/gentoo/guru/tree/dev/net-p2p/ipfs-desktop-bin) | 0.43.0 | [0.47.0](https://github.com/ipfs/ipfs-desktop/tags) | [dawn_xu_helloworld@163.com](https://repology.org/maintainer/dawn_xu_helloworld@163.com) |
| [net-p2p/monero-gui-bin](https://github.com/gentoo/guru/tree/dev/net-p2p/monero-gui-bin) | 0.18.4.3 | [0.18.4.5](https://github.com/monero-project/monero-gui/tags) | [justin026@protonmail.com](https://repology.org/maintainer/justin026@protonmail.com) |
| [net-p2p/syncthingtray](https://github.com/gentoo/guru/tree/dev/net-p2p/syncthingtray) | 2.0.5 | [2.0.7](https://github.com/Martchus/syncthingtray/tags) | [esteve.varela@gmail.com](https://repology.org/maintainer/esteve.varela@gmail.com) |
| [net-p2p/yggdrasil-go](https://github.com/gentoo/guru/tree/dev/net-p2p/yggdrasil-go) | 0.5.12 | [0.5.13-RC.1](https://github.com/yggdrasil-network/yggdrasil-go/tags) | [william@wstrm.dev](https://repology.org/maintainer/william@wstrm.dev) |
| [net-print/captdriver](https://github.com/gentoo/guru/tree/dev/net-print/captdriver) | 0.1.4 | [0.1.4-m5](https://github.com/mounaiban/captdriver/tags) | [dangduong31205@gmail.com](https://repology.org/maintainer/dangduong31205@gmail.com) |
| [net-proxy/MTProxy](https://github.com/gentoo/guru/tree/dev/net-proxy/MTProxy) | 3.0.4 | [3.0.8](https://github.com/GetPageSpeed/MTProxy/tags) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [net-proxy/opera-proxy](https://github.com/gentoo/guru/tree/dev/net-proxy/opera-proxy) | 1.13.1 | [1.15.0](https://github.com/Snawoot/opera-proxy/tags) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [net-proxy/shadowsocks-rust](https://github.com/gentoo/guru/tree/dev/net-proxy/shadowsocks-rust) | 1.22.0 | [1.24.0](https://github.com/shadowsocks/shadowsocks-rust/tags) | [strdenis02@gmail.com](https://repology.org/maintainer/strdenis02@gmail.com) |
| [net-proxy/xray-core](https://github.com/gentoo/guru/tree/dev/net-proxy/xray-core) | 26.2.4 | [26.2.6](https://github.com/XTLS/Xray-core/tags) | [alexander@tsoy.me](https://repology.org/maintainer/alexander@tsoy.me) |
| [net-voip/baresip](https://github.com/gentoo/guru/tree/dev/net-voip/baresip) | 4.4.0 | [4.5.0](https://github.com/baresip/baresip/tags) | [gentoo@fictx.com](https://repology.org/maintainer/gentoo@fictx.com) |
| [net-voip/discover-overlay](https://github.com/gentoo/guru/tree/dev/net-voip/discover-overlay) | 0.7.8 | [0.7.9](https://github.com/trigg/Discover/tags) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [net-voip/re](https://github.com/gentoo/guru/tree/dev/net-voip/re) | 4.4.0 | [4.5.0](https://github.com/baresip/re/tags) | [gentoo@fictx.com](https://repology.org/maintainer/gentoo@fictx.com) |
| [net-voip/vvmd](https://github.com/gentoo/guru/tree/dev/net-voip/vvmd) | 0.8 | [1.1](https://gitlab.com/kop316/vvmd/tags) | [gjdijkman@gjdwebserver.nl](https://repology.org/maintainer/gjdijkman@gjdwebserver.nl) |
| [net-vpn/GlobalProtect-openconnect](https://github.com/gentoo/guru/tree/dev/net-vpn/GlobalProtect-openconnect) | 2.4.4 | [2.5.1](https://github.com/yuezk/GlobalProtect-openconnect/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [net-vpn/mullvadvpn-app](https://github.com/gentoo/guru/tree/dev/net-vpn/mullvadvpn-app) | 2025.14 | [android/2026.2](https://github.com/mullvad/mullvadvpn-app/tags) | [itai@itaiferber.net](https://repology.org/maintainer/itai@itaiferber.net) |
| [sci-electronics/cocotb-bus](https://github.com/gentoo/guru/tree/dev/sci-electronics/cocotb-bus) | 0.2.1 | [0.3.0](https://github.com/cocotb/cocotb-bus/tags) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [sci-electronics/cocotb](https://github.com/gentoo/guru/tree/dev/sci-electronics/cocotb) | 1.9.2 | [2.0.1](https://github.com/cocotb/cocotb/tags) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [sci-electronics/coil64](https://github.com/gentoo/guru/tree/dev/sci-electronics/coil64) | 2.3.38 | [2.4.39](https://github.com/radioacoustick/Coil64/tags) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [sci-electronics/kactus2](https://github.com/gentoo/guru/tree/dev/sci-electronics/kactus2) | 3.13.3 | [3.14.0](https://github.com/kactus2/kactus2dev/tags) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [sci-electronics/liblxi](https://github.com/gentoo/guru/tree/dev/sci-electronics/liblxi) | 1.20 | [1.22](https://github.com/lxi-tools/liblxi/tags) | [gentoo@taujhe.de](https://repology.org/maintainer/gentoo@taujhe.de) |
| [sci-electronics/lxi-tools](https://github.com/gentoo/guru/tree/dev/sci-electronics/lxi-tools) | 2.7 | [2.8](https://github.com/lxi-tools/lxi-tools/tags) | [gentoo@taujhe.de](https://repology.org/maintainer/gentoo@taujhe.de) |
| [sci-electronics/qucs-s](https://github.com/gentoo/guru/tree/dev/sci-electronics/qucs-s) | 25.1.2 | [25.2.0](https://github.com/ra3xdh/qucs_s/tags) | [ljn0099@hotmail.com](https://repology.org/maintainer/ljn0099@hotmail.com) |
| [sci-electronics/slang](https://github.com/gentoo/guru/tree/dev/sci-electronics/slang) | 9.1 | [10.0](https://github.com/MikePopoloski/slang/tags) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [sci-electronics/svls](https://github.com/gentoo/guru/tree/dev/sci-electronics/svls) | 0.2.11 | [0.2.14](https://github.com/dalance/svls/tags) | [-](-) |
| [sci-electronics/yosys](https://github.com/gentoo/guru/tree/dev/sci-electronics/yosys) | 0.61 | [0.62](https://github.com/YosysHQ/yosys/tags) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [sci-libs/onnxruntime-bin](https://github.com/gentoo/guru/tree/dev/sci-libs/onnxruntime-bin) | 1.22.0 | [1.24.1](https://github.com/microsoft/onnxruntime/tags) | [hurikhan77+bgo@gmail.com](https://repology.org/maintainer/hurikhan77+bgo@gmail.com) |
| [sci-libs/onnxruntime](https://github.com/gentoo/guru/tree/dev/sci-libs/onnxruntime) | 1.23.2 | [1.24.1](https://github.com/microsoft/onnxruntime/tags) | [contact@paveloom.dev](https://repology.org/maintainer/contact@paveloom.dev) |
| [sci-misc/boinc-wrapper](https://github.com/gentoo/guru/tree/dev/sci-misc/boinc-wrapper) | 26019 | [server_release/1.6/1.6.1](https://github.com/BOINC/boinc/tags) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [sci-misc/llama-cpp](https://github.com/gentoo/guru/tree/dev/sci-misc/llama-cpp) | 0 | [b7964](https://github.com/ggml-org/llama.cpp/tags) | [zl29ah@gmail.com](https://repology.org/maintainer/zl29ah@gmail.com) |
| [sci-ml/ollama](https://github.com/gentoo/guru/tree/dev/sci-ml/ollama) | 0.14.2 | [0.15.5](https://github.com/ollama/ollama/tags) | [negril.nx+gentoo@gmail.com](https://repology.org/maintainer/negril.nx+gentoo@gmail.com) |
| [sci-physics/openmodelica](https://github.com/gentoo/guru/tree/dev/sci-physics/openmodelica) | 1.26.0 | [1.26.1](https://github.com/OpenModelica/OpenModelica/tags) | [ivan.lloro.boada@gmail.com](https://repology.org/maintainer/ivan.lloro.boada@gmail.com) |
| [sci-physics/ovito](https://github.com/gentoo/guru/tree/dev/sci-physics/ovito) | 3.10.5 | [3.14.1](https://gitlab.com/stuko/ovito/tags) | [strdenis02@gmail.com](https://repology.org/maintainer/strdenis02@gmail.com) |
| [sec-keys/signify-keys-gmid](https://github.com/gentoo/guru/tree/dev/sec-keys/signify-keys-gmid) | 2.1 | [2.1.1](https://github.com/omar-polo/gmid/tags) | [-](-) |
| [sys-apps/colortail](https://github.com/gentoo/guru/tree/dev/sys-apps/colortail) | 0.3.3 | [0.3.5](https://github.com/joakim666/colortail/tags) | [me@aidanharr.is](https://repology.org/maintainer/me@aidanharr.is) |
| [sys-apps/corefreq](https://github.com/gentoo/guru/tree/dev/sys-apps/corefreq) | 2.0.9 | [2.1.0](https://github.com/cyring/CoreFreq/tags) | [-](-) |
| [sys-apps/deepcool-digital-linux](https://github.com/gentoo/guru/tree/dev/sys-apps/deepcool-digital-linux) | 0.10.2 | [0.10.2-alpha](https://github.com/Nortank12/deepcool-digital-linux/tags) | [filip@kszczot.pl](https://repology.org/maintainer/filip@kszczot.pl) |
| [sys-apps/dool](https://github.com/gentoo/guru/tree/dev/sys-apps/dool) | 1.3.2 | [1.3.8](https://github.com/scottchiefbaker/dool/tags) | [flow@gentoo.org](https://repology.org/maintainer/flow@gentoo.org) |
| [sys-apps/dysk](https://github.com/gentoo/guru/tree/dev/sys-apps/dysk) | 2.10.1 | [3.6.0b](https://github.com/Canop/dysk/tags) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [sys-apps/fselect](https://github.com/gentoo/guru/tree/dev/sys-apps/fselect) | 0.8.6 | [0.9.2](https://github.com/jhspetersson/fselect/tags) | [contact@qaidvoid.dev](https://repology.org/maintainer/contact@qaidvoid.dev) |
| [sys-apps/gat](https://github.com/gentoo/guru/tree/dev/sys-apps/gat) | 0.23.1 | [0.26.1](https://github.com/koki-develop/gat/tags) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [sys-apps/hex](https://github.com/gentoo/guru/tree/dev/sys-apps/hex) | 0.6.0 | [0.7.0](https://github.com/sitkevij/hex/tags) | [lo48576@hard-wi.red](https://repology.org/maintainer/lo48576@hard-wi.red) |
| [sys-apps/mission-center](https://github.com/gentoo/guru/tree/dev/sys-apps/mission-center) | 1.1.0 | [3.3.1](https://github.com/Syllo/nvtop/tags) | [-](-) |
| [sys-apps/openSeaChest](https://github.com/gentoo/guru/tree/dev/sys-apps/openSeaChest) | 24.08.1 | [mactions_rel_test_v1](https://github.com/Seagate/openSeaChest/tags) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [sys-apps/ov](https://github.com/gentoo/guru/tree/dev/sys-apps/ov) | 0.32.0 | [0.50.2](https://github.com/noborus/ov/tags) | [-](-) |
| [sys-apps/pnpm-bin](https://github.com/gentoo/guru/tree/dev/sys-apps/pnpm-bin) | 10.19.0 | [10.28.2](https://github.com/pnpm/pnpm/tags) | [-](-) |
| [sys-apps/qemu-openrc](https://github.com/gentoo/guru/tree/dev/sys-apps/qemu-openrc) | 0.11.1 | [0.12.0](https://github.com/jirutka/qemu-openrc/tags) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [sys-auth/hyprpolkitagent](https://github.com/gentoo/guru/tree/dev/sys-auth/hyprpolkitagent) | 0.1.2 | [0.1.3](https://github.com/hyprwm/hyprpolkitagent/tags) | [johu@gmx.de](https://repology.org/maintainer/johu@gmx.de) |
| [sys-boot/grml-rescueboot](https://github.com/gentoo/guru/tree/dev/sys-boot/grml-rescueboot) | 0.6.1 | [0.6.7](https://github.com/grml/grml-rescueboot/tags) | [-](-) |
| [sys-boot/ventoy-bin](https://github.com/gentoo/guru/tree/dev/sys-boot/ventoy-bin) | 1.0.98 | [1.1.10](https://github.com/ventoy/Ventoy/tags) | [-](-) |
| [sys-boot/zfsbootmenu](https://github.com/gentoo/guru/tree/dev/sys-boot/zfsbootmenu) | 3.0.1 | [3.1.0](https://github.com/zbm-dev/zfsbootmenu/tags) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [sys-cluster/genders](https://github.com/gentoo/guru/tree/dev/sys-cluster/genders) | 1.28.1 | [genders-1-32-1](https://github.com/chaos/genders/tags) | [-](-) |
| [sys-cluster/kops-bin](https://github.com/gentoo/guru/tree/dev/sys-cluster/kops-bin) | 1.31.0 | [1.35.0-alpha.1](https://github.com/kubernetes/kops/tags) | [me@dmdutra.dev](https://repology.org/maintainer/me@dmdutra.dev) |
| [sys-fs/gcsfuse](https://github.com/gentoo/guru/tree/dev/sys-fs/gcsfuse) | 2.11.2 | [3.7.1](https://github.com/GoogleCloudPlatform/gcsfuse/tags) | [mathieu.tortuyaux@gmail.com](https://repology.org/maintainer/mathieu.tortuyaux@gmail.com) |
| [sys-fs/gdu](https://github.com/gentoo/guru/tree/dev/sys-fs/gdu) | 5.25.0 | [5.32.0](https://github.com/dundee/gdu/tags) | [-](-) |
| [sys-fs/mountpoint-s3-bin](https://github.com/gentoo/guru/tree/dev/sys-fs/mountpoint-s3-bin) | 1.1.1 | [mountpoint-s3-1.22.0](https://github.com/awslabs/mountpoint-s3/tags) | [-](-) |
| [sys-libs/cyclonedds](https://github.com/gentoo/guru/tree/dev/sys-libs/cyclonedds) | 0.10.3 | [0.10.5](https://github.com/eclipse-cyclonedds/cyclonedds/tags) | [-](-) |
| [sys-libs/iceoryx](https://github.com/gentoo/guru/tree/dev/sys-libs/iceoryx) | 2.0.3 | [2.0.6](https://github.com/eclipse-iceoryx/iceoryx/tags) | [-](-) |
| [sys-power/auto-cpufreq](https://github.com/gentoo/guru/tree/dev/sys-power/auto-cpufreq) | 2.6.0 | [3.0.0](https://github.com/AdnanHodzic/auto-cpufreq/tags) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [sys-power/fan2go](https://github.com/gentoo/guru/tree/dev/sys-power/fan2go) | 0.9.2 | [0.11.1](https://github.com/markusressel/fan2go/tags) | [-](-) |
| [sys-power/nvidia-exec](https://github.com/gentoo/guru/tree/dev/sys-power/nvidia-exec) | 0.2.7 | [0.3.2](https://github.com/pedro00dk/nvidia-exec/tags) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [sys-process/forkstat](https://github.com/gentoo/guru/tree/dev/sys-process/forkstat) | 0.03.02 | [V0.04.00](https://github.com/ColinIanKing/forkstat/tags) | [carana2099@gmail.com](https://repology.org/maintainer/carana2099@gmail.com) |
| [sys-process/nohang](https://github.com/gentoo/guru/tree/dev/sys-process/nohang) | 0.2.0 | [0.3.0](https://github.com/hakavlad/nohang/tags) | [norbiros@protonmail.com](https://repology.org/maintainer/norbiros@protonmail.com) |
| [sys-process/pipectl](https://github.com/gentoo/guru/tree/dev/sys-process/pipectl) | 0.5.0 | [0.5.1](https://github.com/Ferdi265/pipectl/tags) | [rolferen@gmail.com](https://repology.org/maintainer/rolferen@gmail.com) |
| [sys-process/task-spooler](https://github.com/gentoo/guru/tree/dev/sys-process/task-spooler) | 1.3.0 | [2.0.0](https://github.com/justanhduc/task-spooler/tags) | [adel.ks@zegrapher.com](https://repology.org/maintainer/adel.ks@zegrapher.com) |
| [www-apps/code-server-bin](https://github.com/gentoo/guru/tree/dev/www-apps/code-server-bin) | 4.90.3 | [4.108.2](https://github.com/coder/code-server/tags) | [-](-) |
| [www-apps/forgejo](https://github.com/gentoo/guru/tree/dev/www-apps/forgejo) | 13.0.2 | [14.0.2](https://codeberg.org/forgejo/forgejo/tags) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [www-apps/freshrss](https://github.com/gentoo/guru/tree/dev/www-apps/freshrss) | 1.26.3 | [1.28.1](https://github.com/FreshRSS/FreshRSS/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [www-apps/goatcounter](https://github.com/gentoo/guru/tree/dev/www-apps/goatcounter) | 2.6.0 | [2.7.0](https://github.com/arp242/goatcounter/tags) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [www-apps/rimgo](https://github.com/gentoo/guru/tree/dev/www-apps/rimgo) | 1.2.1 | [1.4.1](https://codeberg.org/rimgo/rimgo/tags) | [benoit.dufour@mail.com](https://repology.org/maintainer/benoit.dufour@mail.com) |
| [www-apps/soupault-bin](https://github.com/gentoo/guru/tree/dev/www-apps/soupault-bin) | 5.2.0 | [5.2.1](https://codeberg.org/PataphysicalSociety/soupault/tags) | [itai@itaiferber.net](https://repology.org/maintainer/itai@itaiferber.net) |
| [www-apps/uwebsockets](https://github.com/gentoo/guru/tree/dev/www-apps/uwebsockets) | 20.62.0 | [20.74.0](https://github.com/uNetworking/uWebSockets/tags) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [www-apps/whoogle-search](https://github.com/gentoo/guru/tree/dev/www-apps/whoogle-search) | 0.9.3 | [1.2.2](https://github.com/benbusby/whoogle-search/tags) | [cat@aulucya.gay](https://repology.org/maintainer/cat@aulucya.gay) |
| [www-client/helium-bin](https://github.com/gentoo/guru/tree/dev/www-client/helium-bin) | 0.8.4.1 | [0.8.5.1](https://github.com/imputnet/helium-linux/tags) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [www-client/nyxt](https://github.com/gentoo/guru/tree/dev/www-client/nyxt) | 3.12.0 | [4.0.0](https://github.com/atlas-engineer/nyxt/tags) | [-](-) |
| [www-client/zen-bin](https://github.com/gentoo/guru/tree/dev/www-client/zen-bin) | 1.18.4b | [1.18.5b](https://github.com/zen-browser/desktop/tags) | [saigon-tech@tuta.io](https://repology.org/maintainer/saigon-tech@tuta.io) |
| [www-misc/dufs](https://github.com/gentoo/guru/tree/dev/www-misc/dufs) | 0.40.0 | [0.45.0](https://github.com/sigoden/dufs/tags) | [-](-) |
| [www-misc/kiwix-desktop](https://github.com/gentoo/guru/tree/dev/www-misc/kiwix-desktop) | 2.4.0 | [2.5.1](https://github.com/kiwix/kiwix-desktop/tags) | [-](-) |
| [www-misc/libkiwix](https://github.com/gentoo/guru/tree/dev/www-misc/libkiwix) | 14.0.0 | [14.1.1](https://github.com/kiwix/libkiwix/tags) | [-](-) |
| [www-servers/hinsightd](https://github.com/gentoo/guru/tree/dev/www-servers/hinsightd) | 0.9.17 | [0.9.21](https://gitlab.com/tiotags/hin9/tags) | [tiotags1@gmail.com](https://repology.org/maintainer/tiotags1@gmail.com) |
| [x11-apps/lightdm-gtk-greeter-settings](https://github.com/gentoo/guru/tree/dev/x11-apps/lightdm-gtk-greeter-settings) | 1.2.2 | [lightdm-gtk-greeter-settings-1.2.3](https://github.com/xubuntu/lightdm-gtk-greeter-settings/tags) | [-](-) |
| [x11-drivers/OpenTabletDriver-bin](https://github.com/gentoo/guru/tree/dev/x11-drivers/OpenTabletDriver-bin) | 0.6.3.0 | [0.6.6.2](https://github.com/OpenTabletDriver/OpenTabletDriver/tags) | [ethannij@gmail.com](https://repology.org/maintainer/ethannij@gmail.com) |
| [x11-libs/gtk-fortran](https://github.com/gentoo/guru/tree/dev/x11-libs/gtk-fortran) | 4.8.0 | [4.9.0](https://github.com/vmagnin/gtk-fortran/tags) | [torokhov-s-a@yandex.ru](https://repology.org/maintainer/torokhov-s-a@yandex.ru) |
| [x11-misc/betterlockscreen](https://github.com/gentoo/guru/tree/dev/x11-misc/betterlockscreen) | 4.4.0 | [4.4.1-beta-1](https://github.com/betterlockscreen/betterlockscreen/tags) | [petrus.zy.07@gmail.com](https://repology.org/maintainer/petrus.zy.07@gmail.com) |
| [x11-misc/greenclip-bin](https://github.com/gentoo/guru/tree/dev/x11-misc/greenclip-bin) | 4.2 | [4.3](https://github.com/erebe/greenclip/tags) | [-](-) |
| [x11-misc/i3-restore](https://github.com/gentoo/guru/tree/dev/x11-misc/i3-restore) | 4.1 | [5.0](https://github.com/jdholtz/i3-restore/tags) | [-](-) |
| [x11-misc/i3lock-color](https://github.com/gentoo/guru/tree/dev/x11-misc/i3lock-color) | 2.13.5 | [2.13.c.5](https://github.com/Raymo111/i3lock-color/tags) | [petrus.zy.07@gmail.com](https://repology.org/maintainer/petrus.zy.07@gmail.com) |
| [x11-misc/ly](https://github.com/gentoo/guru/tree/dev/x11-misc/ly) | 1.2.0 | [1.3.2](https://codeberg.org/fairyglade/ly/tags) | [saigon-tech@tuta.io](https://repology.org/maintainer/saigon-tech@tuta.io) |
| [x11-misc/matugen](https://github.com/gentoo/guru/tree/dev/x11-misc/matugen) | 2.4.1 | [3.1.0](https://github.com/InioX/matugen/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [x11-misc/pywal16](https://github.com/gentoo/guru/tree/dev/x11-misc/pywal16) | 3.7.2 | [3.8.14](https://github.com/eylles/pywal16/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [x11-misc/wallust](https://github.com/gentoo/guru/tree/dev/x11-misc/wallust) | 3.3.0 | [3.5.2](https://codeberg.org/explosion-mental/wallust/tags) | [colonia_duck@posteo.net](https://repology.org/maintainer/colonia_duck@posteo.net) |
| [x11-terms/tabby-bin](https://github.com/gentoo/guru/tree/dev/x11-terms/tabby-bin) | 1.0.221 | [1.0.230](https://github.com/Eugeny/tabby/tags) | [-](-) |
| [x11-terms/tym](https://github.com/gentoo/guru/tree/dev/x11-terms/tym) | 3.5.1 | [3.5.2](https://github.com/endaaman/tym/tags) | [rolferen@gmail.com](https://repology.org/maintainer/rolferen@gmail.com) |
| [x11-themes/adw-gtk3](https://github.com/gentoo/guru/tree/dev/x11-themes/adw-gtk3) | 5.10 | [6.4](https://github.com/lassekongo83/adw-gtk3/tags) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [x11-themes/arc-darkest-colors](https://github.com/gentoo/guru/tree/dev/x11-themes/arc-darkest-colors) | 0 | [1.0](https://github.com/rtlewis88/rtl88-Themes/tags) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [x11-themes/catppuccin-neovim](https://github.com/gentoo/guru/tree/dev/x11-themes/catppuccin-neovim) | 1.7.0 | [1.11.0](https://github.com/catppuccin/nvim/tags) | [somerand0mcat@hotmail.com](https://repology.org/maintainer/somerand0mcat@hotmail.com) |
| [x11-wm/qtile-extras](https://github.com/gentoo/guru/tree/dev/x11-wm/qtile-extras) | 0.33.0 | [0.34.1](https://github.com/elParaguayo/qtile-extras/tags) | [-](-) |

</details>
<!-- end -->
<!-- LTeX: enabled=true -->


<details>
    <summary>end notes</summary>
<sub>Congrats, you made it to the bottom</sub>

<sub>If you can afford to pay my Wi-Fi bills, you can support me in Patreon: https://www.patreon.com/IngenarelNeoJesus</sub>

<sub>I don't like putting this in my projects, but until my dropout ass finds a way to get a job/proper funding, I have
no choice but to accept donations, which I personally don't want to trust me</sub>
</details>
