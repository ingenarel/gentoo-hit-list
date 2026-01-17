# Disclaimer:

I have a problem, when I see outdated packages, I want to update them as soon as I can

I tried to find solutions, and in turn also founded like minded people with the same question, and even some answers,
but none of them seemed suitable for me, and making something myself is always more flexible then trying to find other
solutions that may not even fulfill my full use case

You may ask why use this when stuff like [repology](https://repology.org/projects/?inrepo=gentoo_ovl_guru&outdated=1)
exists? it's because this version checks ::guru's dev branch, which is easier for contributors because some package may
already be updated in the dev branch, and hasn't been updated to the master branch, so repology doesn't track that.

on top of that repology only compares the versions in all package repositories and treats the latest updated version as
the 'latest build', so what it technically shows as the 'latest version' can actually be outdated from the upstream, to
explain in simpler terms: if upstream has version 3, arch has version 2, and guru has version 2, repology will show that
guru is up to date, because it's just comparing betweent the different different versions. but this repo doesn't do it,
it tries to track upstream and get the latest version data, hence so many api calls.

while some might say that this level of data is not needed, i say that it is needed since just by glancing at the data
you can guess how many versions is it behind

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

<!-- start -->
# [guru dev branch](https://github.com/gentoo/guru.git)
| Package | Downstream | Upstream | Maintainer |
| ------- | ---------- | -------- | ---------- |
| [acct-group/keyd](https://github.com/gentoo/guru/tree/dev/acct-group/keyd) | 2.5.0 | [2.6.0](https://github.com/rvaiya/keyd) | [jack@pngu.org](https://repology.org/maintainer/jack@pngu.org) |
| [app-admin/aws-vault](https://github.com/gentoo/guru/tree/dev/app-admin/aws-vault) | 7.8.6 | [7.8.7](https://github.com/ByteNess/aws-vault) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [app-admin/chamber](https://github.com/gentoo/guru/tree/dev/app-admin/chamber) | 2.13.2 | [3.1.4](https://github.com/segmentio/chamber) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [app-admin/dotbot](https://github.com/gentoo/guru/tree/dev/app-admin/dotbot) | 1.20.1 | [1.24.0](https://github.com/anishathalye/dotbot) | [sstallion@gmail.com](https://repology.org/maintainer/sstallion@gmail.com) |
| [app-admin/fatrace](https://github.com/gentoo/guru/tree/dev/app-admin/fatrace) | 0.19.0 | [0.19.1](https://github.com/martinpitt/fatrace) | [dev@dyama.net](https://repology.org/maintainer/dev@dyama.net) |
| [app-admin/hardinfo2](https://github.com/gentoo/guru/tree/dev/app-admin/hardinfo2) | 2.2.13 | [release-2.2.16](https://github.com/hardinfo2/hardinfo2) | [quincyf467@protonmail.com](https://repology.org/maintainer/quincyf467@protonmail.com) |
| [app-admin/overmind](https://github.com/gentoo/guru/tree/dev/app-admin/overmind) | 2.4.0 | [2.5.1](https://github.com/DarthSim/overmind) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [app-admin/pulumi-bin](https://github.com/gentoo/guru/tree/dev/app-admin/pulumi-bin) | 3.207.0 | [3.216.0](https://github.com/pulumi/pulumi) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [app-admin/synadm](https://github.com/gentoo/guru/tree/dev/app-admin/synadm) | 0.44 | [migrated-to-codeberg-note](https://github.com/JOJ0/synadm) | [-](-) |
| [app-admin/terragrunt-bin](https://github.com/gentoo/guru/tree/dev/app-admin/terragrunt-bin) | 0.96.1 | [0.98.0-rc2026011601](https://github.com/gruntwork-io/terragrunt) | [hi@dutra.sh](https://repology.org/maintainer/hi@dutra.sh) |
| [app-arch/fuse-archive](https://github.com/gentoo/guru/tree/dev/app-arch/fuse-archive) | 1.12 | [1.16](https://github.com/google/fuse-archive) | [nrk@disroot.org](https://repology.org/maintainer/nrk@disroot.org) |
| [app-arch/libzim](https://github.com/gentoo/guru/tree/dev/app-arch/libzim) | 9.2.1 | [9.4.1](https://github.com/openzim/libzim) | [-](-) |
| [app-backup/grub-btrfs](https://github.com/gentoo/guru/tree/dev/app-backup/grub-btrfs) | 4.13 | [4.14](https://github.com/Antynea/grub-btrfs) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [app-backup/timeshift-autosnap](https://github.com/gentoo/guru/tree/dev/app-backup/timeshift-autosnap) | 0.9 | [4.14](https://github.com/Antynea/grub-btrfs) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [app-backup/timeshift](https://github.com/gentoo/guru/tree/dev/app-backup/timeshift) | 23.07.1 | [master.lmde7](https://github.com/linuxmint/timeshift) | [rossbridger.cc@gmail.com](https://repology.org/maintainer/rossbridger.cc@gmail.com) |
| [app-benchmarks/k6](https://github.com/gentoo/guru/tree/dev/app-benchmarks/k6) | 1.4.2 | [1.5.0](https://github.com/grafana/k6) | [hi@dutra.sh](https://repology.org/maintainer/hi@dutra.sh) |
| [app-containers/kind](https://github.com/gentoo/guru/tree/dev/app-containers/kind) | 0.30.0 | [0.31.0](https://github.com/kubernetes-sigs/kind) | [hi@dutra.sh](https://repology.org/maintainer/hi@dutra.sh) |
| [app-containers/pods](https://github.com/gentoo/guru/tree/dev/app-containers/pods) | 2.1.2 | [2.2.0](https://github.com/marhkb/pods) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [app-crypt/certbot-dns-cloudflare](https://github.com/gentoo/guru/tree/dev/app-crypt/certbot-dns-cloudflare) | 3.2.0 | [5.2.2](https://github.com/certbot/certbot) | [kcelbert@gmail.com](https://repology.org/maintainer/kcelbert@gmail.com) |
| [app-crypt/certbot-dns-desec](https://github.com/gentoo/guru/tree/dev/app-crypt/certbot-dns-desec) | 1.2.1 | [1.3.2](https://github.com/desec-io/certbot-dns-desec) | [-](-) |
| [app-crypt/certbot-dns-rfc2136](https://github.com/gentoo/guru/tree/dev/app-crypt/certbot-dns-rfc2136) | 3.2.0 | [5.2.2](https://github.com/certbot/certbot) | [thican@thican.net](https://repology.org/maintainer/thican@thican.net) |
| [app-crypt/intel-ipsec-mb](https://github.com/gentoo/guru/tree/dev/app-crypt/intel-ipsec-mb) | 1.5 | [2.0](https://github.com/intel/intel-ipsec-mb) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [app-crypt/nitrokey-app2](https://github.com/gentoo/guru/tree/dev/app-crypt/nitrokey-app2) | 2.4.1 | [2.4.3](https://github.com/Nitrokey/nitrokey-app2) | [beatussum@protonmail.com](https://repology.org/maintainer/beatussum@protonmail.com) |
| [app-crypt/totp-cli-bin](https://github.com/gentoo/guru/tree/dev/app-crypt/totp-cli-bin) | 1.8.7 | [1.9.2](https://github.com/yitsushi/totp-cli) | [-](-) |
| [app-doc/geeknote](https://github.com/gentoo/guru/tree/dev/app-doc/geeknote) | 3.0.6 | [3.0.7](https://github.com/vitaly-zdanevich/geeknote) | [-](-) |
| [app-editors/edit](https://github.com/gentoo/guru/tree/dev/app-editors/edit) | 1.2.0 | [1.2.1](https://github.com/microsoft/edit) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [app-editors/kakoune-lsp](https://github.com/gentoo/guru/tree/dev/app-editors/kakoune-lsp) | 18.1.0 | [19.0.1](https://github.com/kakoune-lsp/kakoune-lsp) | [contact@qaidvoid.dev](https://repology.org/maintainer/contact@qaidvoid.dev) |
| [app-editors/lapce](https://github.com/gentoo/guru/tree/dev/app-editors/lapce) | 0.4.2 | [0.4.5](https://github.com/lapce/lapce) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [app-editors/xed](https://github.com/gentoo/guru/tree/dev/app-editors/xed) | 3.8.7 | [master.lmde7](https://github.com/linuxmint/xed) | [antonistatmichalis@outlook.com](https://repology.org/maintainer/antonistatmichalis@outlook.com) |
| [app-emulation/box64](https://github.com/gentoo/guru/tree/dev/app-emulation/box64) | 0.3.0 | [0.4.0](https://github.com/ptitSeb/box64) | [rrogalski@tutanota.com](https://repology.org/maintainer/rrogalski@tutanota.com) |
| [app-emulation/box86](https://github.com/gentoo/guru/tree/dev/app-emulation/box86) | 0.3.6 | [0.3.8](https://github.com/ptitSeb/box86) | [rrogalski@tutanota.com](https://repology.org/maintainer/rrogalski@tutanota.com) |
| [app-emulation/looking-glass](https://github.com/gentoo/guru/tree/dev/app-emulation/looking-glass) | 1 | [B7](https://github.com/gnif/LookingGlass) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [app-emulation/lsfg-vk](https://github.com/gentoo/guru/tree/dev/app-emulation/lsfg-vk) | 1.0.0 | [2.0.0-dev](https://github.com/PancakeTAS/lsfg-vk) | [w.iron.zombie@gmail.com](https://repology.org/maintainer/w.iron.zombie@gmail.com) |
| [app-emulation/x48ng](https://github.com/gentoo/guru/tree/dev/app-emulation/x48ng) | 0.38.0 | [0.51.2](https://github.com/gwenhael-le-moine/x48ng) | [szeist@pm.me](https://repology.org/maintainer/szeist@pm.me) |
| [app-metrics/scaphandre](https://github.com/gentoo/guru/tree/dev/app-metrics/scaphandre) | 0.5.0 | [1.0.2](https://github.com/hubblo-org/scaphandre) | [mathieu.tortuyaux@gmail.com](https://repology.org/maintainer/mathieu.tortuyaux@gmail.com) |
| [app-misc/afetch](https://github.com/gentoo/guru/tree/dev/app-misc/afetch) | 2.2.0 | [V2.2.0](https://github.com/13-CF/afetch) | [mathieu.tortuyaux@gmail.com](https://repology.org/maintainer/mathieu.tortuyaux@gmail.com) |
| [app-misc/arttime](https://github.com/gentoo/guru/tree/dev/app-misc/arttime) | 2.3.4 | [2.4.0](https://github.com/poetaman/arttime) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [app-misc/astroterm](https://github.com/gentoo/guru/tree/dev/app-misc/astroterm) | 1.0.9 | [1.0.10](https://github.com/da-luce/astroterm) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [app-misc/cheat](https://github.com/gentoo/guru/tree/dev/app-misc/cheat) | 4.3.3 | [4.4.2](https://github.com/cheat/cheat) | [mathieu.tortuyaux@gmail.com](https://repology.org/maintainer/mathieu.tortuyaux@gmail.com) |
| [app-misc/clifm](https://github.com/gentoo/guru/tree/dev/app-misc/clifm) | 1.18 | [1.27.1](https://github.com/leo-arch/clifm) | [michaelzcyang@gmail.com](https://repology.org/maintainer/michaelzcyang@gmail.com) |
| [app-misc/cpufetch](https://github.com/gentoo/guru/tree/dev/app-misc/cpufetch) | 1.06 | [1.07](https://github.com/Dr-Noob/cpufetch) | [-](-) |
| [app-misc/doublecmd](https://github.com/gentoo/guru/tree/dev/app-misc/doublecmd) | 1.1.32 | [1.2.0](https://github.com/doublecmd/doublecmd) | [-](-) |
| [app-misc/dpscreenocr](https://github.com/gentoo/guru/tree/dev/app-misc/dpscreenocr) | 1.4.1 | [1.5.0](https://github.com/danpla/dpscreenocr) | [benoit.dufour@mail.com](https://repology.org/maintainer/benoit.dufour@mail.com) |
| [app-misc/far2l](https://github.com/gentoo/guru/tree/dev/app-misc/far2l) | 2.6.5 | [_2.7.0](https://github.com/elfmz/far2l) | [syutkin@gmail.com](https://repology.org/maintainer/syutkin@gmail.com) |
| [app-misc/github-desktop-bin](https://github.com/gentoo/guru/tree/dev/app-misc/github-desktop-bin) | 3.4.9 | [release-3.4.13-linux1](https://github.com/shiftkey/desktop) | [](https://repology.org/maintainer/) |
| [app-misc/keyd](https://github.com/gentoo/guru/tree/dev/app-misc/keyd) | 2.5.0 | [2.6.0](https://github.com/rvaiya/keyd) | [jack@pngu.org](https://repology.org/maintainer/jack@pngu.org) |
| [app-misc/ledger-live-bin](https://github.com/gentoo/guru/tree/dev/app-misc/ledger-live-bin) | 2.84.1 | [live-mobile@3.101.0](https://github.com/LedgerHQ/ledger-live) | [-](-) |
| [app-misc/lf](https://github.com/gentoo/guru/tree/dev/app-misc/lf) | 38 | [r40](https://github.com/gokcehan/lf) | [efe.izbudak@metu.edu.tr](https://repology.org/maintainer/efe.izbudak@metu.edu.tr) |
| [app-misc/libation](https://github.com/gentoo/guru/tree/dev/app-misc/libation) | 12.5.3 | [13.1.3](https://github.com/rmcrackan/Libation) | [juha@luotio.net](https://repology.org/maintainer/juha@luotio.net) |
| [app-misc/minder](https://github.com/gentoo/guru/tree/dev/app-misc/minder) | 1.16.3 | [2.0.3](https://github.com/phase1geo/Minder) | [-](-) |
| [app-misc/mxw](https://github.com/gentoo/guru/tree/dev/app-misc/mxw) | 0.2.1 | [0.2.2](https://github.com/dkbednarczyk/mxw) | [agooglygooglr@gmail.com](https://repology.org/maintainer/agooglygooglr@gmail.com) |
| [app-misc/navi](https://github.com/gentoo/guru/tree/dev/app-misc/navi) | 2.24.0 | [2.25.0-beta1](https://github.com/denisidoro/navi) | [beatussum@protonmail.com](https://repology.org/maintainer/beatussum@protonmail.com) |
| [app-misc/nerdfetch](https://github.com/gentoo/guru/tree/dev/app-misc/nerdfetch) | 8.3.1 | [8.4.2](https://github.com/ThatOneCalculator/NerdFetch) | [nvraxn@gmail.com](https://repology.org/maintainer/nvraxn@gmail.com) |
| [app-misc/opentrack](https://github.com/gentoo/guru/tree/dev/app-misc/opentrack) | 2024.1.1 | [opentrack-2026.1.0](https://github.com/opentrack/opentrack) | [hurikhan77+bgo@gmail.com](https://repology.org/maintainer/hurikhan77+bgo@gmail.com) |
| [app-misc/pfetch](https://github.com/gentoo/guru/tree/dev/app-misc/pfetch) | 1.9.4 | [1.10.0](https://github.com/Un1q32/pfetch) | [mathieu.tortuyaux@gmail.com](https://repology.org/maintainer/mathieu.tortuyaux@gmail.com) |
| [app-misc/qman](https://github.com/gentoo/guru/tree/dev/app-misc/qman) | 1.5.0 | [1.5.1](https://github.com/plp13/qman) | [rolferen@gmail.com](https://repology.org/maintainer/rolferen@gmail.com) |
| [app-misc/sherlock](https://github.com/gentoo/guru/tree/dev/app-misc/sherlock) | 0.15.0 | [0.16.0](https://github.com/sherlock-project/sherlock) | [marco@sirabella.org](https://repology.org/maintainer/marco@sirabella.org) |
| [app-misc/superfile](https://github.com/gentoo/guru/tree/dev/app-misc/superfile) | 1.4.0 | [1.5.0](https://github.com/yorukot/superfile) | [ingenarelitems@gmail.com](https://repology.org/maintainer/ingenarelitems@gmail.com) |
| [app-misc/television](https://github.com/gentoo/guru/tree/dev/app-misc/television) | 0.13.11 | [0.14.5](https://github.com/alexpasmantier/television) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [app-misc/tinyfetch](https://github.com/gentoo/guru/tree/dev/app-misc/tinyfetch) | 6.2 | [6.8a](https://github.com/kernaltrap8/tinyfetch) | [aidenwingard2@gmail.com](https://repology.org/maintainer/aidenwingard2@gmail.com) |
| [app-misc/treesheets](https://github.com/gentoo/guru/tree/dev/app-misc/treesheets) | 2665 | [2952](https://github.com/aardappel/treesheets) | [gentoo@lapawa.de](https://repology.org/maintainer/gentoo@lapawa.de) |
| [app-misc/tty-share-bin](https://github.com/gentoo/guru/tree/dev/app-misc/tty-share-bin) | 2.4.0 | [2.4.1](https://github.com/elisescu/tty-share) | [-](-) |
| [app-misc/twertlefetch](https://github.com/gentoo/guru/tree/dev/app-misc/twertlefetch) | 1.1.0 | [1.2.0](https://github.com/iliketwertles/twertlefetch) | [jarodjoe1210@gmail.com](https://repology.org/maintainer/jarodjoe1210@gmail.com) |
| [app-misc/vocabsieve](https://github.com/gentoo/guru/tree/dev/app-misc/vocabsieve) | 0.12.2 | [0.12.5](https://github.com/FreeLanguageTools/vocabsieve) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [app-misc/wego](https://github.com/gentoo/guru/tree/dev/app-misc/wego) | 2.2 | [2.3](https://github.com/schachmat/wego) | [-](-) |
| [app-misc/wl-kbptr](https://github.com/gentoo/guru/tree/dev/app-misc/wl-kbptr) | 0.3.0 | [0.4.1](https://github.com/moverest/wl-kbptr) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [app-misc/wtf](https://github.com/gentoo/guru/tree/dev/app-misc/wtf) | 0.43.0 | [0.48.0](https://github.com/wtfutil/wtf) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [app-misc/xplr](https://github.com/gentoo/guru/tree/dev/app-misc/xplr) | 0.21.3 | [1.1.0](https://github.com/sayanarijit/xplr) | [rmicielski@purelymail.com](https://repology.org/maintainer/rmicielski@purelymail.com) |
| [app-misc/yazi](https://github.com/gentoo/guru/tree/dev/app-misc/yazi) | 25.5.31 | [26.1.4](https://github.com/sxyazi/yazi) | [f00wl@felinn.org](https://repology.org/maintainer/f00wl@felinn.org) |
| [app-office/lotus123r3](https://github.com/gentoo/guru/tree/dev/app-office/lotus123r3) | 1.0.0 | [1.0.0rc4](https://github.com/taviso/123elf) | [joe@wt.gd](https://repology.org/maintainer/joe@wt.gd) |
| [app-office/notesnook-bin](https://github.com/gentoo/guru/tree/dev/app-office/notesnook-bin) | 2.6.12 | [3.3.8-beta.1](https://github.com/streetwriters/notesnook) | [-](-) |
| [app-office/obsidian](https://github.com/gentoo/guru/tree/dev/app-office/obsidian) | 1.10.3 | [1.11.4](https://github.com/obsidianmd/obsidian-releases) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [app-office/standartnotes-bin](https://github.com/gentoo/guru/tree/dev/app-office/standartnotes-bin) | 3.183.22 | [@standardnotes/clipper@1.1.567](https://github.com/standardnotes/app) | [-](-) |
| [app-shells/fzf-tab](https://github.com/gentoo/guru/tree/dev/app-shells/fzf-tab) | 0 | [1.2.0](https://github.com/Aloxaf/fzf-tab) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [app-shells/mommy](https://github.com/gentoo/guru/tree/dev/app-shells/mommy) | 1.6.0 | [1.8.0](https://github.com/fwdekker/mommy) | [ceres@ceressees.dev](https://repology.org/maintainer/ceres@ceressees.dev) |
| [app-shells/powerline-go](https://github.com/gentoo/guru/tree/dev/app-shells/powerline-go) | 1.25 | [1.26](https://github.com/justjanne/powerline-go) | [egorr.berd@gmail.com](https://repology.org/maintainer/egorr.berd@gmail.com) |
| [app-shells/zsh-autocomplete](https://github.com/gentoo/guru/tree/dev/app-shells/zsh-autocomplete) | 24.09.04 | [25.03.19](https://github.com/marlonrichert/zsh-autocomplete) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [app-text/cmark-gfm](https://github.com/gentoo/guru/tree/dev/app-text/cmark-gfm) | 0.29.0.13 | [0.29.0.gfm.13](https://github.com/github/cmark-gfm) | [dev@dyama.net](https://repology.org/maintainer/dev@dyama.net) |
| [app-text/harper](https://github.com/gentoo/guru/tree/dev/app-text/harper) | 1.4.0 | [1.4.1](https://github.com/Automattic/harper) | [timovanveen@hotmail.nl](https://repology.org/maintainer/timovanveen@hotmail.nl) |
| [app-text/iwe](https://github.com/gentoo/guru/tree/dev/app-text/iwe) | 0.0.60 | [iwe-v0.0.60](https://github.com/iwe-org/iwe) | [contact@paveloom.dev](https://repology.org/maintainer/contact@paveloom.dev) |
| [app-text/koodo-reader-bin](https://github.com/gentoo/guru/tree/dev/app-text/koodo-reader-bin) | 1.6.3 | [2.2.5](https://github.com/troyeguo/koodo-reader) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [app-text/lizard](https://github.com/gentoo/guru/tree/dev/app-text/lizard) | 1.19.0 | [1.20.0](https://github.com/terryyin/lizard) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [app-text/lsp](https://github.com/gentoo/guru/tree/dev/app-text/lsp) | 0.5.0 | [0.5.0-rc3](https://github.com/dgouders/lsp) | [dirk@gouders.net](https://repology.org/maintainer/dirk@gouders.net) |
| [app-text/OCRmyPDF](https://github.com/gentoo/guru/tree/dev/app-text/OCRmyPDF) | 16.10.2 | [16.13.0](https://github.com/ocrmypdf/OCRmyPDF) | [alarig@swordarmor.fr](https://repology.org/maintainer/alarig@swordarmor.fr) |
| [app-text/pandoc-crossref-bin](https://github.com/gentoo/guru/tree/dev/app-text/pandoc-crossref-bin) | 0.3.17.0f | [0.3.22b](https://github.com/lierdakil/pandoc-crossref) | [-](-) |
| [app-text/texlab](https://github.com/gentoo/guru/tree/dev/app-text/texlab) | 5.24.0 | [5.25.1](https://github.com/latex-lsp/texlab) | [gasc@eurecom.fr](https://repology.org/maintainer/gasc@eurecom.fr) |
| [app-text/tldr](https://github.com/gentoo/guru/tree/dev/app-text/tldr) | 3.4.1 | [3.4.3](https://github.com/tldr-pages/tldr-python-client) | [contrib_x@protonmail.com](https://repology.org/maintainer/contrib_x@protonmail.com) |
| [app-text/vale](https://github.com/gentoo/guru/tree/dev/app-text/vale) | 3.9.1 | [3.13.0](https://github.com/errata-ai/vale) | [erkiferenc@gmail.com](https://repology.org/maintainer/erkiferenc@gmail.com) |
| [app-vim/rainbow_csv](https://github.com/gentoo/guru/tree/dev/app-vim/rainbow_csv) | 1.10.0 | [4.3.0](https://github.com/mechatroner/rainbow_csv) | [hendrik.klug@gmail.com](https://repology.org/maintainer/hendrik.klug@gmail.com) |
| [app-vim/vimwiki-cli](https://github.com/gentoo/guru/tree/dev/app-vim/vimwiki-cli) | 1.1.0 | [1.2.0](https://github.com/sstallion/vimwiki-cli) | [-](-) |
| [dev-cpp/cpp-jwt](https://github.com/gentoo/guru/tree/dev/dev-cpp/cpp-jwt) | 1.5 | [1.5.1](https://github.com/arun11299/cpp-jwt) | [samuel.bauer@yahoo.fr](https://repology.org/maintainer/samuel.bauer@yahoo.fr) |
| [dev-cpp/cpp-utilities](https://github.com/gentoo/guru/tree/dev/dev-cpp/cpp-utilities) | 5.32.0 | [5.32.1](https://github.com/Martchus/cpp-utilities) | [esteve.varela@gmail.com](https://repology.org/maintainer/esteve.varela@gmail.com) |
| [dev-cpp/dpp](https://github.com/gentoo/guru/tree/dev/dev-cpp/dpp) | 10.0.33 | [10.1.4](https://github.com/brainboxdotcc/dpp) | [samuel@seals-are-bouncy.tech](https://repology.org/maintainer/samuel@seals-are-bouncy.tech) |
| [dev-cpp/drogon](https://github.com/gentoo/guru/tree/dev/dev-cpp/drogon) | 1.9.6 | [1.10.0-beta.3](https://github.com/drogonframework/drogon) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [dev-cpp/gsl-lite](https://github.com/gentoo/guru/tree/dev/dev-cpp/gsl-lite) | 0.38.0 | [1.0.1](https://github.com/gsl-lite/gsl-lite) | [brian.gloyer@gmail.com](https://repology.org/maintainer/brian.gloyer@gmail.com) |
| [dev-cpp/tinygltf](https://github.com/gentoo/guru/tree/dev/dev-cpp/tinygltf) | 2.9.6 | [2.9.7](https://github.com/syoyo/tinygltf) | [dangduong31205@gmail.com](https://repology.org/maintainer/dangduong31205@gmail.com) |
| [dev-cpp/trantor](https://github.com/gentoo/guru/tree/dev/dev-cpp/trantor) | 1.5.20 | [1.5.25](https://github.com/an-tao/trantor) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [dev-cpp/trompeloeil](https://github.com/gentoo/guru/tree/dev/dev-cpp/trompeloeil) | 47 | [49](https://github.com/rollbear/trompeloeil) | [-](-) |
| [dev-cpp/units](https://github.com/gentoo/guru/tree/dev/dev-cpp/units) | 2.3.4 | [3.3.0](https://github.com/nholthaus/units) | [kostadinshishmanov@protonmail.com](https://repology.org/maintainer/kostadinshishmanov@protonmail.com) |
| [dev-cpp/workflow](https://github.com/gentoo/guru/tree/dev/dev-cpp/workflow) | 0.10.5 | [0.11.11](https://github.com/sogou/workflow) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [dev-crystal/http_proxy](https://github.com/gentoo/guru/tree/dev/dev-crystal/http_proxy) | 0.12.0 | [0.13.1](https://github.com/mamantoha/http_proxy) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [dev-crystal/webdrivers](https://github.com/gentoo/guru/tree/dev/dev-crystal/webdrivers) | 0.4.3 | [0.4.4](https://github.com/crystal-loot/webdrivers.cr) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [dev-db/sqlcmd](https://github.com/gentoo/guru/tree/dev/dev-db/sqlcmd) | 1.8.3 | [1.9.0](https://github.com/microsoft/go-sqlcmd) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [dev-db/turso](https://github.com/gentoo/guru/tree/dev/dev-db/turso) | 0.4.3 | [0.4.4-pre.2](https://github.com/tursodatabase/turso) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [dev-elixir/hex](https://github.com/gentoo/guru/tree/dev/dev-elixir/hex) | 1.0.1 | [2.3.1](https://github.com/hexpm/hex) | [contact@hacktivis.me](https://repology.org/maintainer/contact@hacktivis.me) |
| [dev-embedded/arduino-cli](https://github.com/gentoo/guru/tree/dev/dev-embedded/arduino-cli) | 1.3.1 | [1.4.0](https://github.com/arduino/arduino-cli) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [dev-embedded/esp-coredump](https://github.com/gentoo/guru/tree/dev/dev-embedded/esp-coredump) | 1.14.0 | [1.15.0](https://github.com/espressif/esp-coredump) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-embedded/esp-idf-kconfig](https://github.com/gentoo/guru/tree/dev/dev-embedded/esp-idf-kconfig) | 2.5.1 | [3.4.2](https://github.com/espressif/esp-idf-kconfig) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-embedded/esp-idf-monitor](https://github.com/gentoo/guru/tree/dev/dev-embedded/esp-idf-monitor) | 1.8.0 | [1.9.0](https://github.com/espressif/esp-idf-monitor) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-embedded/esp-idf-panic-decoder](https://github.com/gentoo/guru/tree/dev/dev-embedded/esp-idf-panic-decoder) | 1.4.1 | [1.4.2](https://github.com/espressif/esp-idf-panic-decoder) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-embedded/esp-idf-size](https://github.com/gentoo/guru/tree/dev/dev-embedded/esp-idf-size) | 1.7.1 | [2.1.0](https://github.com/espressif/esp-idf-size) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-embedded/idf-component-manager](https://github.com/gentoo/guru/tree/dev/dev-embedded/idf-component-manager) | 2.4.2 | [2.4.5](https://github.com/espressif/idf-component-manager) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-go/staticcheck](https://github.com/gentoo/guru/tree/dev/dev-go/staticcheck) | 0.3.3 | [2025.1.1](https://github.com/dominikh/go-tools) | [ran.dall@icloud.com](https://repology.org/maintainer/ran.dall@icloud.com) |
| [dev-java/corretto-bin](https://github.com/gentoo/guru/tree/dev/dev-java/corretto-bin) | 25.0.0.36.2 | [january-2023-update](https://github.com/microsoft/openjdk) | [dev@greener.sh](https://repology.org/maintainer/dev@greener.sh) |
| [dev-java/jdtls-bin](https://github.com/gentoo/guru/tree/dev/dev-java/jdtls-bin) | 1.54.0 | [hackathon_zrh](https://github.com/eclipse/eclipse.jdt.ls) | [java@gentoo.org](https://repology.org/maintainer/java@gentoo.org) |
| [dev-java/microsoft-openjdk-bin](https://github.com/gentoo/guru/tree/dev/dev-java/microsoft-openjdk-bin) | 25.0.0 | [january-2023-update](https://github.com/microsoft/openjdk) | [dev@greener.sh](https://repology.org/maintainer/dev@greener.sh) |
| [dev-lang/c3c](https://github.com/gentoo/guru/tree/dev/dev-lang/c3c) | 0.7.5 | [0.7.8](https://github.com/c3lang/c3c) | [ch@brendlinonline.de](https://repology.org/maintainer/ch@brendlinonline.de) |
| [dev-lang/cc65](https://github.com/gentoo/guru/tree/dev/dev-lang/cc65) | 9999 | [V2.19](https://github.com/cc65/cc65) | [sprice623@aol.com](https://repology.org/maintainer/sprice623@aol.com) |
| [dev-lang/crystal-bin](https://github.com/gentoo/guru/tree/dev/dev-lang/crystal-bin) | 1.18.2 | [1.19.0](https://github.com/crystal-lang/crystal) | [-](-) |
| [dev-lang/odin](https://github.com/gentoo/guru/tree/dev/dev-lang/odin) | 2025.06 | [dev-2026-01](https://github.com/odin-lang/Odin) | [-](-) |
| [dev-lang/opencilk-bin](https://github.com/gentoo/guru/tree/dev/dev-lang/opencilk-bin) | 2.1 | [opencilk/v3.0](https://github.com/OpenCilk/opencilk-project) | [flow@gentoo.org](https://repology.org/maintainer/flow@gentoo.org) |
| [dev-lang/opencilk](https://github.com/gentoo/guru/tree/dev/dev-lang/opencilk) | 2.1 | [opencilk/v3.0](https://github.com/OpenCilk/cheetah) | [flow@gentoo.org](https://repology.org/maintainer/flow@gentoo.org) |
| [dev-lang/swift-bin](https://github.com/gentoo/guru/tree/dev/dev-lang/swift-bin) | 6.2.3 | [swift-6.2.3-RELEASE](https://github.com/swiftlang/swift) | [itai@itaiferber.net](https://repology.org/maintainer/itai@itaiferber.net) |
| [dev-lang/swift-bootstrap](https://github.com/gentoo/guru/tree/dev/dev-lang/swift-bootstrap) | 1.0 | [swift-6.2.3-RELEASE](https://github.com/swiftlang/swift) | [itai@itaiferber.net](https://repology.org/maintainer/itai@itaiferber.net) |
| [dev-lang/swift](https://github.com/gentoo/guru/tree/dev/dev-lang/swift) | 6.2.3 | [swift-6.2.3-RELEASE](https://github.com/swiftlang/swift) | [itai@itaiferber.net](https://repology.org/maintainer/itai@itaiferber.net) |
| [dev-lang/uiua](https://github.com/gentoo/guru/tree/dev/dev-lang/uiua) | 0.16.2 | [0.18.0-dev.4](https://github.com/uiua-lang/uiua) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-lang/wabt](https://github.com/gentoo/guru/tree/dev/dev-lang/wabt) | 1.0.37 | [1.0.39](https://github.com/WebAssembly/wabt) | [contact@hacktivis.me](https://repology.org/maintainer/contact@hacktivis.me) |
| [dev-libs/cyrus-sasl-xoauth2](https://github.com/gentoo/guru/tree/dev/dev-libs/cyrus-sasl-xoauth2) | 0.2 | [edge](https://github.com/moriyoshi/cyrus-sasl-xoauth2) | [mathijs@mathsaey.be](https://repology.org/maintainer/mathijs@mathsaey.be) |
| [dev-libs/ip2loc](https://github.com/gentoo/guru/tree/dev/dev-libs/ip2loc) | 8.6.1 | [8.7.0](https://github.com/chrislim2888/IP2Location-C-Library) | [trakrailysurely@danceylove.net](https://repology.org/maintainer/trakrailysurely@danceylove.net) |
| [dev-libs/libcli](https://github.com/gentoo/guru/tree/dev/dev-libs/libcli) | 1.10.7 | [V1.10.7](https://github.com/dparrish/libcli) | [zhuyifei1999@gmail.com](https://repology.org/maintainer/zhuyifei1999@gmail.com) |
| [dev-libs/libsignal-ffi](https://github.com/gentoo/guru/tree/dev/dev-libs/libsignal-ffi) | 0.86.8 | [0.86.13](https://github.com/signalapp/libsignal) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [dev-libs/libtypec](https://github.com/gentoo/guru/tree/dev/dev-libs/libtypec) | 0.5.2 | [libtypec-0.5.1](https://github.com/Rajaram-Regupathy/libtypec) | [adrian.ratiu@collabora.com](https://repology.org/maintainer/adrian.ratiu@collabora.com) |
| [dev-libs/lsquic](https://github.com/gentoo/guru/tree/dev/dev-libs/lsquic) | 4.2.0 | [4.5.0](https://github.com/litespeedtech/lsquic) | [trakrailysurely@danceylove.net](https://repology.org/maintainer/trakrailysurely@danceylove.net) |
| [dev-libs/luksmeta](https://github.com/gentoo/guru/tree/dev/dev-libs/luksmeta) | 9 | [10](https://github.com/latchset/luksmeta) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [dev-libs/lygia](https://github.com/gentoo/guru/tree/dev/dev-libs/lygia) | 1.3.0 | [1.4.0](https://github.com/patriciogonzalezvivo/lygia) | [dangduong31205@gmail.com](https://repology.org/maintainer/dangduong31205@gmail.com) |
| [dev-libs/M_CLI2](https://github.com/gentoo/guru/tree/dev/dev-libs/M_CLI2) | 3.2.0 | [V3.2.0](https://github.com/urbanjost/M_CLI2) | [torokhov-s-a@yandex.ru](https://repology.org/maintainer/torokhov-s-a@yandex.ru) |
| [dev-libs/nanopb](https://github.com/gentoo/guru/tree/dev/dev-libs/nanopb) | 0.4.9.1 | [nanopb-0.4.9.1](https://github.com/nanopb/nanopb) | [vincentahluwalia@protonmail.com](https://repology.org/maintainer/vincentahluwalia@protonmail.com) |
| [dev-libs/open62541](https://github.com/gentoo/guru/tree/dev/dev-libs/open62541) | 1.4.14 | [1.5.0-rc2](https://github.com/open62541/open62541) | [kurt@kmk-computers.de](https://repology.org/maintainer/kurt@kmk-computers.de) |
| [dev-libs/s2n](https://github.com/gentoo/guru/tree/dev/dev-libs/s2n) | 1.5.27 | [1.6.4](https://github.com/aws/s2n-tls) | [trakrailysurely@danceylove.net](https://repology.org/maintainer/trakrailysurely@danceylove.net) |
| [dev-libs/tweeny](https://github.com/gentoo/guru/tree/dev/dev-libs/tweeny) | 3.2.0 | [3.2.1](https://github.com/mobius3/tweeny) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [dev-ml/chrome-trace](https://github.com/gentoo/guru/tree/dev/dev-ml/chrome-trace) | 3.16.0 | [3.21.0](https://github.com/ocaml/dune) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/dune-rpc](https://github.com/gentoo/guru/tree/dev/dev-ml/dune-rpc) | 3.16.0 | [3.21.0](https://github.com/ocaml/dune) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/jsonrpc](https://github.com/gentoo/guru/tree/dev/dev-ml/jsonrpc) | 1.19.0 | [1.25.0](https://github.com/ocaml/ocaml-lsp) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/lsp](https://github.com/gentoo/guru/tree/dev/dev-ml/lsp) | 1.19.0 | [1.25.0](https://github.com/ocaml/ocaml-lsp) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/lwt-dllist](https://github.com/gentoo/guru/tree/dev/dev-ml/lwt-dllist) | 1.0.1 | [1.1.0](https://github.com/mirage/lwt-dllist) | [fogti@ytrizja.de](https://repology.org/maintainer/fogti@ytrizja.de) |
| [dev-ml/merlin-lib](https://github.com/gentoo/guru/tree/dev/dev-ml/merlin-lib) | 4.16 | [5.6.1-504](https://github.com/ocaml/merlin) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/ocamlc-loc](https://github.com/gentoo/guru/tree/dev/dev-ml/ocamlc-loc) | 3.16.0 | [3.21.0](https://github.com/ocaml/dune) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/ocamlformat-lib](https://github.com/gentoo/guru/tree/dev/dev-ml/ocamlformat-lib) | 0.26.2 | [0.28.1](https://github.com/ocaml-ppx/ocamlformat) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/ocamlformat-rpc-lib](https://github.com/gentoo/guru/tree/dev/dev-ml/ocamlformat-rpc-lib) | 0.26.2 | [0.28.1](https://github.com/ocaml-ppx/ocamlformat) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-ml/ocaml-version](https://github.com/gentoo/guru/tree/dev/dev-ml/ocaml-version) | 3.6.9 | [4.0.3](https://github.com/ocurrent/ocaml-version) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-nim/nake](https://github.com/gentoo/guru/tree/dev/dev-nim/nake) | 1.9.4 | [1.9.5](https://github.com/fowlmouth/nake) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [dev-python/ahocorasick](https://github.com/gentoo/guru/tree/dev/dev-python/ahocorasick) | 2.1.0 | [2.3.0](https://github.com/WojciechMula/pyahocorasick) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-python/annotated-doc](https://github.com/gentoo/guru/tree/dev/dev-python/annotated-doc) | 0.0.2 | [0.0.4](https://github.com/fastapi/annotated-doc) | [negril.nx+gentoo@gmail.com](https://repology.org/maintainer/negril.nx+gentoo@gmail.com) |
| [dev-python/asyncpg](https://github.com/gentoo/guru/tree/dev/dev-python/asyncpg) | 0.30.0 | [0.31.0](https://github.com/MagicStack/asyncpg) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [dev-python/auditok](https://github.com/gentoo/guru/tree/dev/dev-python/auditok) | 0.2.0 | [0.3.0](https://github.com/amsehili/auditok) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [dev-python/autopxd](https://github.com/gentoo/guru/tree/dev/dev-python/autopxd) | 2.5.0 | [3.2.2](https://github.com/elijahr/python-autopxd2) | [wuzhenyu@ustc.edu](https://repology.org/maintainer/wuzhenyu@ustc.edu) |
| [dev-python/azure-core](https://github.com/gentoo/guru/tree/dev/dev-python/azure-core) | 1.28.0 | [azure-cosmos_4.14.5](https://github.com/Azure/azure-sdk-for-python) | [-](-) |
| [dev-python/azure-storage-blob](https://github.com/gentoo/guru/tree/dev/dev-python/azure-storage-blob) | 12.17.0 | [azure-cosmos_4.14.5](https://github.com/Azure/azure-sdk-for-python) | [-](-) |
| [dev-python/billiard](https://github.com/gentoo/guru/tree/dev/dev-python/billiard) | 4.0.2 | [4.2.4](https://github.com/celery/billiard) | [-](-) |
| [dev-python/bleak](https://github.com/gentoo/guru/tree/dev/dev-python/bleak) | 1.1.1 | [2.1.1](https://github.com/hbldh/bleak) | [zl29ah@gmail.com](https://repology.org/maintainer/zl29ah@gmail.com) |
| [dev-python/blurhash](https://github.com/gentoo/guru/tree/dev/dev-python/blurhash) | 1.1.5 | [1.1.5-pub-2](https://github.com/halcy/blurhash-python) | [-](-) |
| [dev-python/celery](https://github.com/gentoo/guru/tree/dev/dev-python/celery) | 5.4.0 | [5.6.2](https://github.com/celery/celery) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [dev-python/click-command-tree](https://github.com/gentoo/guru/tree/dev/dev-python/click-command-tree) | 1.1.1 | [1.2.0](https://github.com/whwright/click-command-tree) | [-](-) |
| [dev-python/click-repl](https://github.com/gentoo/guru/tree/dev/dev-python/click-repl) | 0.2.0 | [0.3.0](https://github.com/click-contrib/click-repl) | [-](-) |
| [dev-python/dacite](https://github.com/gentoo/guru/tree/dev/dev-python/dacite) | 1.8.1 | [1.9.2-fix](https://github.com/konradhalas/dacite) | [andrea.postiglione@gmail.com](https://repology.org/maintainer/andrea.postiglione@gmail.com) |
| [dev-python/django-constance](https://github.com/gentoo/guru/tree/dev/dev-python/django-constance) | 3.1.0 | [4.3.4](https://github.com/jazzband/django-constance) | [](https://repology.org/maintainer/) |
| [dev-python/dtreeviz](https://github.com/gentoo/guru/tree/dev/dev-python/dtreeviz) | 2.2.2 | [2.3.1](https://github.com/parrt/dtreeviz) | [torsi@fi.uba.ar](https://repology.org/maintainer/torsi@fi.uba.ar) |
| [dev-python/EbookLib](https://github.com/gentoo/guru/tree/dev/dev-python/EbookLib) | 0.17.1 | [0.20](https://github.com/aerkalov/ebooklib) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [dev-python/fastapi](https://github.com/gentoo/guru/tree/dev/dev-python/fastapi) | 0.127.0 | [0.128.0](https://github.com/fastapi/fastapi) | [negril.nx+gentoo@gmail.com](https://repology.org/maintainer/negril.nx+gentoo@gmail.com) |
| [dev-python/flask-socketio](https://github.com/gentoo/guru/tree/dev/dev-python/flask-socketio) | 5.5.1 | [5.6.0](https://github.com/miguelgrinberg/Flask-SocketIO) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-python/fontawesomefree](https://github.com/gentoo/guru/tree/dev/dev-python/fontawesomefree) | 6.5.1 | [7.1.0](https://github.com/FortAwesome/Font-Awesome) | [](https://repology.org/maintainer/) |
| [dev-python/graphql-core](https://github.com/gentoo/guru/tree/dev/dev-python/graphql-core) | 3.2.3 | [3.2.7](https://github.com/graphql-python/graphql-core) | [-](-) |
| [dev-python/icecream](https://github.com/gentoo/guru/tree/dev/dev-python/icecream) | 2.1.8 | [2.1.9](https://github.com/gruns/icecream) | [gasc@eurecom.fr](https://repology.org/maintainer/gasc@eurecom.fr) |
| [dev-python/injector](https://github.com/gentoo/guru/tree/dev/dev-python/injector) | 0.22.0 | [0.24.0](https://github.com/python-injector/injector) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [dev-python/itemadapter](https://github.com/gentoo/guru/tree/dev/dev-python/itemadapter) | 0.11.0 | [0.12.0](https://github.com/scrapy/itemadapter) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [dev-python/jinja2-cli](https://github.com/gentoo/guru/tree/dev/dev-python/jinja2-cli) | 0.8.2 | [1.0.0](https://github.com/mattrobenolt/jinja2-cli) | [-](-) |
| [dev-python/jsonfeed](https://github.com/gentoo/guru/tree/dev/dev-python/jsonfeed) | 1.1.2 | [1.2.0](https://github.com/lukasschwab/jsonfeed) | [gasc@eurecom.fr](https://repology.org/maintainer/gasc@eurecom.fr) |
| [dev-python/justhtml](https://github.com/gentoo/guru/tree/dev/dev-python/justhtml) | 0.16.0 | [0.36.0](https://github.com/EmilStenstrom/justhtml) | [ivan.lloro.boada@gmail.com](https://repology.org/maintainer/ivan.lloro.boada@gmail.com) |
| [dev-python/ledger-bitcoin](https://github.com/gentoo/guru/tree/dev/dev-python/ledger-bitcoin) | 0.4.0 | [2.4.2](https://github.com/LedgerHQ/app-bitcoin-new) | [watermanpaint@posteo.net](https://repology.org/maintainer/watermanpaint@posteo.net) |
| [dev-python/lru-dict](https://github.com/gentoo/guru/tree/dev/dev-python/lru-dict) | 1.4.1 | [1.5.0](https://github.com/amitdev/lru-dict) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [dev-python/markdownify](https://github.com/gentoo/guru/tree/dev/dev-python/markdownify) | 0.11.6 | [1.2.2](https://github.com/matthewwithanm/python-markdownify) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [dev-python/mkdocs-rss-plugin](https://github.com/gentoo/guru/tree/dev/dev-python/mkdocs-rss-plugin) | 1.17.4 | [1.17.9](https://github.com/Guts/mkdocs-rss-plugin) | [gasc@eurecom.fr](https://repology.org/maintainer/gasc@eurecom.fr) |
| [dev-python/mollie-api-python](https://github.com/gentoo/guru/tree/dev/dev-python/mollie-api-python) | 3.6.0 | [3.9.1](https://github.com/mollie/mollie-api-python) | [](https://repology.org/maintainer/) |
| [dev-python/moreorless](https://github.com/gentoo/guru/tree/dev/dev-python/moreorless) | 0.4.0 | [0.5.0](https://github.com/thatch/moreorless) | [-](-) |
| [dev-python/mpxj](https://github.com/gentoo/guru/tree/dev/dev-python/mpxj) | 14.1.0 | [15.2.0](https://github.com/joniles/mpxj) | [ivan.lloro.boada@gmail.com](https://repology.org/maintainer/ivan.lloro.boada@gmail.com) |
| [dev-python/nitrokey](https://github.com/gentoo/guru/tree/dev/dev-python/nitrokey) | 0.4.1 | [0.4.2](https://github.com/Nitrokey/nitrokey-sdk-py) | [beatussum@protonmail.com](https://repology.org/maintainer/beatussum@protonmail.com) |
| [dev-python/odfdo](https://github.com/gentoo/guru/tree/dev/dev-python/odfdo) | 3.18.2 | [3.19.0](https://github.com/jdum/odfdo) | [ivan.lloro.boada@gmail.com](https://repology.org/maintainer/ivan.lloro.boada@gmail.com) |
| [dev-python/phx-class-registry](https://github.com/gentoo/guru/tree/dev/dev-python/phx-class-registry) | 4.1.0 | [5.1.1](https://github.com/todofixthis/class-registry) | [ezzieyguywuf@gmail.com](https://repology.org/maintainer/ezzieyguywuf@gmail.com) |
| [dev-python/pillow-jxl-plugin](https://github.com/gentoo/guru/tree/dev/dev-python/pillow-jxl-plugin) | 1.3.2 | [1.3.7](https://github.com/Isotr0py/pillow-jpegxl-plugin) | [dev@dyama.net](https://repology.org/maintainer/dev@dyama.net) |
| [dev-python/prometheus_exporter](https://github.com/gentoo/guru/tree/dev/dev-python/prometheus_exporter) | 1.1.0 | [1.3.0](https://github.com/desultory/prometheus_exporter) | [dev@pyl.onl](https://repology.org/maintainer/dev@pyl.onl) |
| [dev-python/proselint](https://github.com/gentoo/guru/tree/dev/dev-python/proselint) | 0.14.0 | [0.16.0](https://github.com/amperser/proselint) | [-](-) |
| [dev-python/protego](https://github.com/gentoo/guru/tree/dev/dev-python/protego) | 0.4.0 | [0.5.0](https://github.com/scrapy/protego) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [dev-python/ptpython](https://github.com/gentoo/guru/tree/dev/dev-python/ptpython) | 3.0.29 | [3.0.32](https://github.com/prompt-toolkit/ptpython) | [wuzhenyu@ustc.edu](https://repology.org/maintainer/wuzhenyu@ustc.edu) |
| [dev-python/pwdlib](https://github.com/gentoo/guru/tree/dev/dev-python/pwdlib) | 0.2.1 | [0.3.0](https://github.com/frankie567/pwdlib) | [negril.nx+gentoo@gmail.com](https://repology.org/maintainer/negril.nx+gentoo@gmail.com) |
| [dev-python/pydantic-extra-types](https://github.com/gentoo/guru/tree/dev/dev-python/pydantic-extra-types) | 2.10.6 | [2.11.0](https://github.com/pydantic/pydantic-extra-types) | [parona@protonmail.com](https://repology.org/maintainer/parona@protonmail.com) |
| [dev-python/pyfiglet](https://github.com/gentoo/guru/tree/dev/dev-python/pyfiglet) | 1.0.2 | [1.0.4](https://github.com/pwaller/pyfiglet) | [-](-) |
| [dev-python/pygments-promql](https://github.com/gentoo/guru/tree/dev/dev-python/pygments-promql) | 0.0.9 | [0.1.1](https://github.com/pabluk/pygments-promql) | [mathieu.tortuyaux@gmail.com](https://repology.org/maintainer/mathieu.tortuyaux@gmail.com) |
| [dev-python/pymorphy3](https://github.com/gentoo/guru/tree/dev/dev-python/pymorphy3) | 1.2.0 | [2.0.6](https://github.com/no-plagiarism/pymorphy3) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [dev-python/PyPubSub](https://github.com/gentoo/guru/tree/dev/dev-python/PyPubSub) | 4.0.3 | [rel_3.4.2](https://github.com/schollii/pypubsub) | [-](-) |
| [dev-python/pyrime](https://github.com/gentoo/guru/tree/dev/dev-python/pyrime) | 0.0.7 | [0.2.2](https://github.com/Freed-Wu/pyrime) | [wuzhenyu@ustc.edu](https://repology.org/maintainer/wuzhenyu@ustc.edu) |
| [dev-python/pysdl3](https://github.com/gentoo/guru/tree/dev/dev-python/pysdl3) | 0.9.9 | [0.9.10b0](https://github.com/Aermoss/PySDL3) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [dev-python/pystardict](https://github.com/gentoo/guru/tree/dev/dev-python/pystardict) | 0.8 | [0.9](https://github.com/lig/pystardict) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [dev-python/pytest-celery](https://github.com/gentoo/guru/tree/dev/dev-python/pytest-celery) | 0.1.0 | [1.2.1](https://github.com/celery/pytest-celery) | [-](-) |
| [dev-python/python-fire](https://github.com/gentoo/guru/tree/dev/dev-python/python-fire) | 0.7.0 | [0.7.1](https://github.com/google/python-fire) | [-](-) |
| [dev-python/python-socketio](https://github.com/gentoo/guru/tree/dev/dev-python/python-socketio) | 5.12.1 | [5.16.0](https://github.com/miguelgrinberg/python-socketio) | [-](-) |
| [dev-python/python-telegram-bot](https://github.com/gentoo/guru/tree/dev/dev-python/python-telegram-bot) | 21.1.1 | [22.5](https://github.com/python-telegram-bot/python-telegram-bot) | [dwosky@pm.me](https://repology.org/maintainer/dwosky@pm.me) |
| [dev-python/pywebview](https://github.com/gentoo/guru/tree/dev/dev-python/pywebview) | 5.1 | [6.1](https://github.com/r0x0r/pywebview) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [dev-python/rectangle-packer](https://github.com/gentoo/guru/tree/dev/dev-python/rectangle-packer) | 2.0.2 | [2.0.5](https://github.com/Penlect/rectangle-packer) | [navi@vlhl.dev](https://repology.org/maintainer/navi@vlhl.dev) |
| [dev-python/scrapy](https://github.com/gentoo/guru/tree/dev/dev-python/scrapy) | 2.12.0 | [2.14.1](https://github.com/scrapy/scrapy) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [dev-python/sendgrid](https://github.com/gentoo/guru/tree/dev/dev-python/sendgrid) | 6.11.0 | [6.12.5](https://github.com/sendgrid/sendgrid-python) | [stepan_kk@pm.me](https://repology.org/maintainer/stepan_kk@pm.me) |
| [dev-python/sentry-sdk](https://github.com/gentoo/guru/tree/dev/dev-python/sentry-sdk) | 2.30.0 | [2.49.0](https://github.com/getsentry/sentry-python) | [-](-) |
| [dev-python/simplemma](https://github.com/gentoo/guru/tree/dev/dev-python/simplemma) | 0.9.1 | [1.1.2](https://github.com/adbar/simplemma) | [dev@notyourcomputer.net](https://repology.org/maintainer/dev@notyourcomputer.net) |
| [dev-python/sphinx-click](https://github.com/gentoo/guru/tree/dev/dev-python/sphinx-click) | 4.2.0 | [6.2.0](https://github.com/click-contrib/sphinx-click) | [-](-) |
| [dev-python/templated-dictionary](https://github.com/gentoo/guru/tree/dev/dev-python/templated-dictionary) | 1.6 | [python-templated-dictionary-1.5-1](https://github.com/xsuchy/templated-dictionary) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [dev-python/textual](https://github.com/gentoo/guru/tree/dev/dev-python/textual) | 7.0.1 | [7.3.0](https://github.com/Textualize/textual) | [gasc@eurecom.fr](https://repology.org/maintainer/gasc@eurecom.fr) |
| [dev-python/tweepy](https://github.com/gentoo/guru/tree/dev/dev-python/tweepy) | 4.14.0 | [4.16.0](https://github.com/tweepy/tweepy) | [-](-) |
| [dev-python/xattr](https://github.com/gentoo/guru/tree/dev/dev-python/xattr) | 1.2.0 | [1.3.0](https://github.com/xattr/xattr) | [-](-) |
| [dev-ruby/byebug](https://github.com/gentoo/guru/tree/dev/dev-ruby/byebug) | 11.1.3 | [13.0.0](https://github.com/deivid-rodriguez/byebug) | [-](-) |
| [dev-ruby/pry-byebug](https://github.com/gentoo/guru/tree/dev/dev-ruby/pry-byebug) | 3.10.1 | [3.12.0](https://github.com/deivid-rodriguez/pry-byebug) | [-](-) |
| [dev-ruby/rbspy](https://github.com/gentoo/guru/tree/dev/dev-ruby/rbspy) | 0.21.0 | [0.42.1](https://github.com/rbspy/rbspy) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [dev-ruby/ruby-install](https://github.com/gentoo/guru/tree/dev/dev-ruby/ruby-install) | 0.9.3 | [0.10.2](https://github.com/postmodern/ruby-install) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [dev-tex/tabularray](https://github.com/gentoo/guru/tree/dev/dev-tex/tabularray) | 2023.03.01 | [2025C](https://github.com/lvjr/tabularray) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [dev-tex/tectonic](https://github.com/gentoo/guru/tree/dev/dev-tex/tectonic) | 0.15.0 | [tectonic@0.15.0](https://github.com/tectonic-typesetting/tectonic) | [-](-) |
| [dev-util/bash-language-server](https://github.com/gentoo/guru/tree/dev/dev-util/bash-language-server) | 5.6.0 | [server-5.6.0](https://github.com/bash-lsp/bash-language-server) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [dev-util/bats-assert](https://github.com/gentoo/guru/tree/dev/dev-util/bats-assert) | 2.2.0 | [2.2.4](https://github.com/bats-core/bats-assert) | [-](-) |
| [dev-util/bruno-bin](https://github.com/gentoo/guru/tree/dev/dev-util/bruno-bin) | 1.9.0 | [3.0.2](https://github.com/usebruno/bruno) | [martin-kokos@protonmail.com](https://repology.org/maintainer/martin-kokos@protonmail.com) |
| [dev-util/catalyst-lab](https://github.com/gentoo/guru/tree/dev/dev-util/catalyst-lab) | 1.6.1 | [catalyst-lab-v1.6.1](https://github.com/damiandudycz/catalyst-lab) | [damiandudycz@yahoo.com](https://repology.org/maintainer/damiandudycz@yahoo.com) |
| [dev-util/catppuccin-whiskers](https://github.com/gentoo/guru/tree/dev/dev-util/catppuccin-whiskers) | 2.4.0 | [2.5.1](https://github.com/catppuccin/whiskers) | [somerand0mcat@hotmail.com](https://repology.org/maintainer/somerand0mcat@hotmail.com) |
| [dev-util/cmakelang](https://github.com/gentoo/guru/tree/dev/dev-util/cmakelang) | 0.6.13 | [pseudo-master](https://github.com/cheshirekow/cmake_format) | [falbrechtskirchinger@gmail.com](https://repology.org/maintainer/falbrechtskirchinger@gmail.com) |
| [dev-util/codex](https://github.com/gentoo/guru/tree/dev/dev-util/codex) | 0.86.0 | [rust-v0.88.0-alpha.1](https://github.com/openai/codex) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [dev-util/coq-lsp](https://github.com/gentoo/guru/tree/dev/dev-util/coq-lsp) | 0.1.9 | [0.2.5+8.20](https://github.com/ejgallego/coq-lsp) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-util/DirectXShaderCompiler](https://github.com/gentoo/guru/tree/dev/dev-util/DirectXShaderCompiler) | 1.8.2505 | [1.8.2505.1](https://github.com/microsoft/DirectXShaderCompiler) | [denis7774@gmail.com](https://repology.org/maintainer/denis7774@gmail.com) |
| [dev-util/exercism](https://github.com/gentoo/guru/tree/dev/dev-util/exercism) | 3.2.0 | [3.5.8](https://github.com/exercism/cli) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [dev-util/gitlab-ci-local-bin](https://github.com/gentoo/guru/tree/dev/dev-util/gitlab-ci-local-bin) | 4.56.0 | [4.64.1](https://github.com/firecow/gitlab-ci-local) | [flow@gentoo.org](https://repology.org/maintainer/flow@gentoo.org) |
| [dev-util/go-task](https://github.com/gentoo/guru/tree/dev/dev-util/go-task) | 3.41.0 | [3.46.4](https://github.com/go-task/task) | [sm+gentoo@skym.fi](https://repology.org/maintainer/sm+gentoo@skym.fi) |
| [dev-util/insomnia-bin](https://github.com/gentoo/guru/tree/dev/dev-util/insomnia-bin) | 2023.5.8 | [core@12.3.0](https://github.com/Kong/insomnia) | [-](-) |
| [dev-util/juliaup](https://github.com/gentoo/guru/tree/dev/dev-util/juliaup) | 1.18.9 | [1.19.0](https://github.com/JuliaLang/juliaup) | [dev@dyama.net](https://repology.org/maintainer/dev@dyama.net) |
| [dev-util/kubetail-bin](https://github.com/gentoo/guru/tree/dev/dev-util/kubetail-bin) | 0.11.0 | [cli/v0.11.0](https://github.com/kubetail-org/kubetail) | [andres@kubetail.com](https://repology.org/maintainer/andres@kubetail.com) |
| [dev-util/kubetail](https://github.com/gentoo/guru/tree/dev/dev-util/kubetail) | 0.11.0 | [cli/v0.11.0](https://github.com/kubetail-org/kubetail) | [andres@kubetail.com](https://repology.org/maintainer/andres@kubetail.com) |
| [dev-util/libtypec-utils](https://github.com/gentoo/guru/tree/dev/dev-util/libtypec-utils) | 0.5.2 | [libtypec-0.5.1](https://github.com/Rajaram-Regupathy/libtypec) | [adrian.ratiu@collabora.com](https://repology.org/maintainer/adrian.ratiu@collabora.com) |
| [dev-util/lottieconverter](https://github.com/gentoo/guru/tree/dev/dev-util/lottieconverter) | 0.2 | [r0.2](https://github.com/sot-tech/LottieConverter) | [rrogalski@tutanota.com](https://repology.org/maintainer/rrogalski@tutanota.com) |
| [dev-util/minify-bin](https://github.com/gentoo/guru/tree/dev/dev-util/minify-bin) | 2.24.4 | [2.24.8](https://github.com/tdewolff/minify) | [itai@itaiferber.net](https://repology.org/maintainer/itai@itaiferber.net) |
| [dev-util/mise](https://github.com/gentoo/guru/tree/dev/dev-util/mise) | 2025.12.12 | [2026.1.3](https://github.com/jdx/mise) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [dev-util/mock-core-configs](https://github.com/gentoo/guru/tree/dev/dev-util/mock-core-configs) | 43.3 | [mock-6.6-1](https://github.com/rpm-software-management/mock) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [dev-util/mock](https://github.com/gentoo/guru/tree/dev/dev-util/mock) | 6.6 | [mock-6.6-1](https://github.com/rpm-software-management/mock) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [dev-util/ocamlformat](https://github.com/gentoo/guru/tree/dev/dev-util/ocamlformat) | 0.26.2 | [0.28.1](https://github.com/ocaml-ppx/ocamlformat) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-util/ocp-indent](https://github.com/gentoo/guru/tree/dev/dev-util/ocp-indent) | 1.8.2 | [1.9.0](https://github.com/OCamlPro/ocp-indent) | [tokusan441@gmail.com](https://repology.org/maintainer/tokusan441@gmail.com) |
| [dev-util/pifpaf](https://github.com/gentoo/guru/tree/dev/dev-util/pifpaf) | 3.3.0 | [3.4.0](https://github.com/jd/pifpaf) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [dev-util/scc](https://github.com/gentoo/guru/tree/dev/dev-util/scc) | 3.4.0 | [3.6.0](https://github.com/boyter/scc) | [Wuzy01@qq.com](https://repology.org/maintainer/Wuzy01@qq.com) |
| [dev-util/stripe-cli](https://github.com/gentoo/guru/tree/dev/dev-util/stripe-cli) | 1.33.0 | [1.34.0](https://github.com/stripe/stripe-cli) | [-](-) |
| [dev-util/tailspin](https://github.com/gentoo/guru/tree/dev/dev-util/tailspin) | 5.4.5 | [5.5.0](https://github.com/bensadeh/tailspin) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [dev-util/tflint-bin](https://github.com/gentoo/guru/tree/dev/dev-util/tflint-bin) | 0.46.0 | [0.60.0](https://github.com/terraform-linters/tflint) | [-](-) |
| [dev-util/tokei](https://github.com/gentoo/guru/tree/dev/dev-util/tokei) | 13.0.0 | [14.0.0](https://github.com/XAMPPRocky/tokei) | [lo48576@hard-wi.red](https://repology.org/maintainer/lo48576@hard-wi.red) |
| [dev-util/trivy](https://github.com/gentoo/guru/tree/dev/dev-util/trivy) | 0.55.2 | [0.68.2](https://github.com/aquasecurity/trivy) | [alexey@zapparov.com](https://repology.org/maintainer/alexey@zapparov.com) |
| [dev-util/typescript-language-server](https://github.com/gentoo/guru/tree/dev/dev-util/typescript-language-server) | 4.3.3 | [5.1.3](https://github.com/typescript-language-server/typescript-language-server) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [dev-util/wakatime-cli](https://github.com/gentoo/guru/tree/dev/dev-util/wakatime-cli) | 1.28.6 | [1.137.1](https://github.com/wakatime/wakatime-cli) | [ezzieyguywuf@gmail.com](https://repology.org/maintainer/ezzieyguywuf@gmail.com) |
| [dev-zig/zls](https://github.com/gentoo/guru/tree/dev/dev-zig/zls) | 0.15.0 | [0.15.1](https://github.com/zigtools/zls) | [bratishkaerik@landless-city.net](https://repology.org/maintainer/bratishkaerik@landless-city.net) |
| [games-action/ATLauncher](https://github.com/gentoo/guru/tree/dev/games-action/ATLauncher) | 3.4.40.1 | [3.4.40.2](https://github.com/ATLauncher/ATLauncher) | [-](-) |
| [games-arcade/SpaceCadetPinball](https://github.com/gentoo/guru/tree/dev/games-arcade/SpaceCadetPinball) | 2.1.0 | [Release_2.1.0](https://github.com/k4zmu2a/SpaceCadetPinball) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [games-board/fairy-stockfish](https://github.com/gentoo/guru/tree/dev/games-board/fairy-stockfish) | 14.0.1 | [fairy_sf_14_0_1_xq](https://github.com/ianfab/Fairy-Stockfish) | [torokhov-s-a@yandex.ru](https://repology.org/maintainer/torokhov-s-a@yandex.ru) |
| [games-emulation/dosbox-x](https://github.com/gentoo/guru/tree/dev/games-emulation/dosbox-x) | 2026.01.02 | [dosbox-x-v2026.01.02](https://github.com/joncampbell123/dosbox-x) | [liaoyuan@gmail.com](https://repology.org/maintainer/liaoyuan@gmail.com) |
| [games-engines/fs2_open](https://github.com/gentoo/guru/tree/dev/games-engines/fs2_open) | 24.2.0 | [release_25_0_0-RC9](https://github.com/scp-fs2open/fs2open.github.com) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [games-engines/nxengine-evo](https://github.com/gentoo/guru/tree/dev/games-engines/nxengine-evo) | 2.6.5 | [2.6.5-1](https://github.com/nxengine/nxengine-evo) | [contact@hacktivis.me](https://repology.org/maintainer/contact@hacktivis.me) |
| [games-engines/ponscripter-fork](https://github.com/gentoo/guru/tree/dev/games-engines/ponscripter-fork) | 3.0.2 | [4.0.1](https://github.com/07th-mod/ponscripter-fork) | [contact@hacktivis.me](https://repology.org/maintainer/contact@hacktivis.me) |
| [games-engines/system3-sdl2](https://github.com/gentoo/guru/tree/dev/games-engines/system3-sdl2) | 1.7.0 | [1.7.1](https://github.com/kichikuou/system3-sdl2) | [lookatnadeko@protonmail.com](https://repology.org/maintainer/lookatnadeko@protonmail.com) |
| [games-fps/crispy-doom](https://github.com/gentoo/guru/tree/dev/games-fps/crispy-doom) | 6.0 | [crispy-doom-7.1](https://github.com/fabiangreffrath/crispy-doom) | [-](-) |
| [games-puzzle/aaaaxy](https://github.com/gentoo/guru/tree/dev/games-puzzle/aaaaxy) | 1.5.250 | [1.6.332](https://github.com/divVerent/aaaaxy) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [games-puzzle/katawa-shoujo](https://github.com/gentoo/guru/tree/dev/games-puzzle/katawa-shoujo) | 1.4.7 | [2.0.3](https://github.com/fleetingheart/ksre) | [strdenis02@gmail.com](https://repology.org/maintainer/strdenis02@gmail.com) |
| [games-roguelike/cataclysm-dda](https://github.com/gentoo/guru/tree/dev/games-roguelike/cataclysm-dda) | 0h | [cdda-experimental-2026-01-17-1932](https://github.com/CleverRaven/Cataclysm-DDA) | [strategictraveler@proton.me](https://repology.org/maintainer/strategictraveler@proton.me) |
| [games-strategy/unciv-bin](https://github.com/gentoo/guru/tree/dev/games-strategy/unciv-bin) | 4.15.6 | [4.19.7](https://github.com/yairm210/Unciv) | [fkobi@pm.me](https://repology.org/maintainer/fkobi@pm.me) |
| [games-util/dwarf-therapist](https://github.com/gentoo/guru/tree/dev/games-util/dwarf-therapist) | 42.1.5 | [42.1.21](https://github.com/Dwarf-Therapist/Dwarf-Therapist) | [ezzieyguywuf@gmail.com](https://repology.org/maintainer/ezzieyguywuf@gmail.com) |
| [games-util/goverlay](https://github.com/gentoo/guru/tree/dev/games-util/goverlay) | 1.2 | [1.7.1](https://github.com/benjamimgois/goverlay) | [1758961307@qq.com](https://repology.org/maintainer/1758961307@qq.com) |
| [games-util/itch-bin](https://github.com/gentoo/guru/tree/dev/games-util/itch-bin) | 26.1.9 | [26.4.0-canary](https://github.com/itchio/itch) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [games-util/mangohud](https://github.com/gentoo/guru/tree/dev/games-util/mangohud) | 0.8.2 | [0.8.3-rc1](https://github.com/flightlessmango/MangoHud) | [adel.ks@zegrapher.com](https://repology.org/maintainer/adel.ks@zegrapher.com) |
| [games-util/modrinth-app-bin](https://github.com/gentoo/guru/tree/dev/games-util/modrinth-app-bin) | 0.10.25 | [0.10.26](https://github.com/Modrinth/code) | [norbiros@protonmail.com](https://repology.org/maintainer/norbiros@protonmail.com) |
| [games-util/ProtonUp-Qt](https://github.com/gentoo/guru/tree/dev/games-util/ProtonUp-Qt) | 2.13.0 | [2.14.0](https://github.com/DavidoTek/ProtonUp-Qt) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [games-util/r2modman-bin](https://github.com/gentoo/guru/tree/dev/games-util/r2modman-bin) | 3.1.51 | [3.2.11](https://github.com/ebkr/r2modmanPlus) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [gnome-extra/nautilus-open-any-terminal](https://github.com/gentoo/guru/tree/dev/gnome-extra/nautilus-open-any-terminal) | 0.7.0 | [0.8.0](https://github.com/Stunkymonkey/nautilus-open-any-terminal) | [contact@paveloom.dev](https://repology.org/maintainer/contact@paveloom.dev) |
| [gnome-extra/yad](https://github.com/gentoo/guru/tree/dev/gnome-extra/yad) | 14.1 | [14.2](https://github.com/v1cont/yad) | [plevine457@gmail.com](https://repology.org/maintainer/plevine457@gmail.com) |
| [gui-apps/autotiling-rs](https://github.com/gentoo/guru/tree/dev/gui-apps/autotiling-rs) | 0.1.6 | [0.1.7](https://github.com/ammgws/autotiling-rs) | [elliot@tar.bet](https://repology.org/maintainer/elliot@tar.bet) |
| [gui-apps/aylurs-gtk-shell](https://github.com/gentoo/guru/tree/dev/gui-apps/aylurs-gtk-shell) | 1.8.2 | [3.1.1](https://github.com/Aylur/ags) | [chinh4thepro@gmail.com](https://repology.org/maintainer/chinh4thepro@gmail.com) |
| [gui-apps/gradience](https://github.com/gentoo/guru/tree/dev/gui-apps/gradience) | 0.4.1 | [0.8.0-beta1](https://github.com/GradienceTeam/Gradience) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/hyprnome](https://github.com/gentoo/guru/tree/dev/gui-apps/hyprnome) | 0.3.0 | [0.3.1](https://github.com/donovanglover/hyprnome) | [unlsycn@unlsycn.com](https://repology.org/maintainer/unlsycn@unlsycn.com) |
| [gui-apps/hyprpaper](https://github.com/gentoo/guru/tree/dev/gui-apps/hyprpaper) | 0.7.6 | [0.8.1](https://github.com/hyprwm/hyprpaper) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [gui-apps/hyprshade](https://github.com/gentoo/guru/tree/dev/gui-apps/hyprshade) | 3.2.1 | [4.0.1](https://github.com/loqusion/hyprshade) | [johnmh@johnmh.me](https://repology.org/maintainer/johnmh@johnmh.me) |
| [gui-apps/hyprsunset](https://github.com/gentoo/guru/tree/dev/gui-apps/hyprsunset) | 0.2.0 | [0.3.3](https://github.com/hyprwm/hyprsunset) | [saigon-tech@tuta.io](https://repology.org/maintainer/saigon-tech@tuta.io) |
| [gui-apps/hyprswitch](https://github.com/gentoo/guru/tree/dev/gui-apps/hyprswitch) | 1.3.1 | [4.9.2](https://github.com/H3rmt/hyprswitch) | [unlsycn@unlsycn.com](https://repology.org/maintainer/unlsycn@unlsycn.com) |
| [gui-apps/intiface-central-bin](https://github.com/gentoo/guru/tree/dev/gui-apps/intiface-central-bin) | 2.6.4 | [3.0.0-beta4](https://github.com/intiface/intiface-central) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [gui-apps/klassy](https://github.com/gentoo/guru/tree/dev/gui-apps/klassy) | 6.4 | [6.4.breeze6.4.0](https://github.com/paulmcauley/klassy) | [yuzi54780@outlook.com](https://repology.org/maintainer/yuzi54780@outlook.com) |
| [gui-apps/nwg-clipman](https://github.com/gentoo/guru/tree/dev/gui-apps/nwg-clipman) | 0.2.5 | [0.2.8](https://github.com/nwg-piotr/nwg-clipman) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/nwg-displays](https://github.com/gentoo/guru/tree/dev/gui-apps/nwg-displays) | 0.3.25 | [0.3.26](https://github.com/nwg-piotr/nwg-displays) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/nwg-hello](https://github.com/gentoo/guru/tree/dev/gui-apps/nwg-hello) | 0.4.0 | [0.4.2](https://github.com/nwg-piotr/nwg-hello) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/nwg](https://github.com/gentoo/guru/tree/dev/gui-apps/nwg) | 0 | [0.5.49](https://github.com/nwg-piotr/nwg-shell) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/nwg-panel](https://github.com/gentoo/guru/tree/dev/gui-apps/nwg-panel) | 0.10.12 | [0.10.13](https://github.com/nwg-piotr/nwg-panel) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/openrefine](https://github.com/gentoo/guru/tree/dev/gui-apps/openrefine) | 3.9.3 | [3.10-beta1](https://github.com/OpenRefine/OpenRefine) | [-](-) |
| [gui-apps/pop-launcher](https://github.com/gentoo/guru/tree/dev/gui-apps/pop-launcher) | 1.2.1 | [1.2.7](https://github.com/pop-os/launcher) | [dev@dyama.net](https://repology.org/maintainer/dev@dyama.net) |
| [gui-apps/rofi-wayland](https://github.com/gentoo/guru/tree/dev/gui-apps/rofi-wayland) | 1.7.8 | [1.7.9+wayland1](https://github.com/lbonn/rofi) | [nvraxn@gmail.com](https://repology.org/maintainer/nvraxn@gmail.com) |
| [gui-apps/satty](https://github.com/gentoo/guru/tree/dev/gui-apps/satty) | 0.19.0 | [0.20.0](https://github.com/gabm/satty) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [gui-apps/sddm-conf](https://github.com/gentoo/guru/tree/dev/gui-apps/sddm-conf) | 0.3.0 | [0.4.0](https://github.com/qtilities/sddm-conf) | [-](-) |
| [gui-apps/sfwbar](https://github.com/gentoo/guru/tree/dev/gui-apps/sfwbar) | 1.0 | [1.0_beta16.1](https://github.com/LBCrion/sfwbar) | [harley@hosers.org](https://repology.org/maintainer/harley@hosers.org) |
| [gui-apps/showmethekey](https://github.com/gentoo/guru/tree/dev/gui-apps/showmethekey) | 1.13.1 | [1.19.0](https://github.com/AlynxZhou/showmethekey) | [-](-) |
| [gui-apps/swaylock-plugin](https://github.com/gentoo/guru/tree/dev/gui-apps/swaylock-plugin) | 1.8.0 | [1.8.4](https://github.com/mstoeckl/swaylock-plugin) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [gui-apps/swayosd](https://github.com/gentoo/guru/tree/dev/gui-apps/swayosd) | 0.2.1 | [0.3.0](https://github.com/ErikReider/SwayOSD) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [gui-apps/sworkstyle](https://github.com/gentoo/guru/tree/dev/gui-apps/sworkstyle) | 1.3.5 | [1.3.6](https://github.com/Lyr-7D1h/swayest_workstyle) | [ethan.twardy@gmail.com](https://repology.org/maintainer/ethan.twardy@gmail.com) |
| [gui-apps/tessen](https://github.com/gentoo/guru/tree/dev/gui-apps/tessen) | 2.2.1 | [2.2.3](https://github.com/ayushnix/tessen) | [](https://repology.org/maintainer/) |
| [gui-apps/walker](https://github.com/gentoo/guru/tree/dev/gui-apps/walker) | 0.13.26 | [2.13.0](https://github.com/abenz1267/walker) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [gui-apps/wl-clip-persist](https://github.com/gentoo/guru/tree/dev/gui-apps/wl-clip-persist) | 0.4.3 | [0.5.0](https://github.com/Linus789/wl-clip-persist) | [johnmh@johnmh.me](https://repology.org/maintainer/johnmh@johnmh.me) |
| [gui-libs/qtutilities](https://github.com/gentoo/guru/tree/dev/gui-libs/qtutilities) | 6.18.4 | [6.19.0](https://github.com/Martchus/qtutilities) | [esteve.varela@gmail.com](https://repology.org/maintainer/esteve.varela@gmail.com) |
| [mail-client/mailspring-bin](https://github.com/gentoo/guru/tree/dev/mail-client/mailspring-bin) | 1.16.0 | [1.17.1](https://github.com/Foundry376/Mailspring) | [adel.ks@zegrapher.com](https://repology.org/maintainer/adel.ks@zegrapher.com) |
| [mail-filter/postfix-mta-sts-resolver](https://github.com/gentoo/guru/tree/dev/mail-filter/postfix-mta-sts-resolver) | 1.4.0 | [1.5.1](https://github.com/Snawoot/postfix-mta-sts-resolver) | [-](-) |
| [media-fonts/blobmoji](https://github.com/gentoo/guru/tree/dev/media-fonts/blobmoji) | 15.0 | [15.1-beta1](https://github.com/C1710/blobmoji) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [media-fonts/dseg](https://github.com/gentoo/guru/tree/dev/media-fonts/dseg) | 0.46 | [0.50beta1](https://github.com/keshikan/DSEG) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [media-fonts/monaspace](https://github.com/gentoo/guru/tree/dev/media-fonts/monaspace) | 1.200 | [1.301](https://github.com/githubnext/monaspace) | [dev@greener.sh](https://repology.org/maintainer/dev@greener.sh) |
| [media-fonts/overpass](https://github.com/gentoo/guru/tree/dev/media-fonts/overpass) | 3.0.4 | [3.0.5](https://github.com/RedHatOfficial/Overpass) | [andrea.postiglione@gmail.com](https://repology.org/maintainer/andrea.postiglione@gmail.com) |
| [media-fonts/source-han-serif](https://github.com/gentoo/guru/tree/dev/media-fonts/source-han-serif) | 2.003 | [2.003R](https://github.com/adobe-fonts/source-han-serif) | [rossbridger.cc@gmail.com](https://repology.org/maintainer/rossbridger.cc@gmail.com) |
| [media-gfx/dnglab](https://github.com/gentoo/guru/tree/dev/media-gfx/dnglab) | 0.6.1 | [0.7.1](https://github.com/dnglab/dnglab) | [brettalcox@gmail.com](https://repology.org/maintainer/brettalcox@gmail.com) |
| [media-gfx/pdf4qt](https://github.com/gentoo/guru/tree/dev/media-gfx/pdf4qt) | 1.5.1.0 | [1.5.2.0](https://github.com/JakubMelka/PDF4QT) | [fatzer2@gmail.com](https://repology.org/maintainer/fatzer2@gmail.com) |
| [media-gfx/qview](https://github.com/gentoo/guru/tree/dev/media-gfx/qview) | 6.1 | [7.1](https://github.com/jurplel/qView) | [dnovomesky@gmail.com](https://repology.org/maintainer/dnovomesky@gmail.com) |
| [media-gfx/sic](https://github.com/gentoo/guru/tree/dev/media-gfx/sic) | 0.22.4 | [0.24.0](https://github.com/foresterre/sic) | [mustafasalih1991@gmail.com](https://repology.org/maintainer/mustafasalih1991@gmail.com) |
| [media-gfx/vpuppr](https://github.com/gentoo/guru/tree/dev/media-gfx/vpuppr) | 0.9.0 | [0.10.0-alpha.1](https://github.com/virtual-puppet-project/vpuppr) | [navi@vlhl.dev](https://repology.org/maintainer/navi@vlhl.dev) |
| [media-libs/alvr](https://github.com/gentoo/guru/tree/dev/media-libs/alvr) | 16.0.0 | [20.14.1](https://github.com/alvr-org/ALVR) | [emil@emiljacobs.nl](https://repology.org/maintainer/emil@emiljacobs.nl) |
| [media-libs/amdvlk-bin](https://github.com/gentoo/guru/tree/dev/media-libs/amdvlk-bin) | 2025.2.1 | [-2025.Q2.1](https://github.com/GPUOpen-Drivers/AMDVLK) | [denis7774@gmail.com](https://repology.org/maintainer/denis7774@gmail.com) |
| [media-libs/amdvlk](https://github.com/gentoo/guru/tree/dev/media-libs/amdvlk) | 2025.2.1 | [-2025.Q2.1](https://github.com/GPUOpen-Drivers/AMDVLK) | [-](-) |
| [media-libs/grok](https://github.com/gentoo/guru/tree/dev/media-libs/grok) | 11.0.0 | [20.0.4](https://github.com/GrokImageCompression/grok) | [flow@gentoo.org](https://repology.org/maintainer/flow@gentoo.org) |
| [media-libs/imgui](https://github.com/gentoo/guru/tree/dev/media-libs/imgui) | 1.91.6 | [1.92.5](https://github.com/ocornut/imgui) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [media-libs/implot](https://github.com/gentoo/guru/tree/dev/media-libs/implot) | 0.16 | [0.17](https://github.com/epezent/implot) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [media-libs/openvr](https://github.com/gentoo/guru/tree/dev/media-libs/openvr) | 1.23.8 | [2.12.14](https://github.com/ValveSoftware/openvr) | [sam@binarycake.ca](https://repology.org/maintainer/sam@binarycake.ca) |
| [media-libs/openxr-loader](https://github.com/gentoo/guru/tree/dev/media-libs/openxr-loader) | 1.1.54 | [release-1.1.54](https://github.com/KhronosGroup/OpenXR-SDK) | [contact@hacktivis.me](https://repology.org/maintainer/contact@hacktivis.me) |
| [media-libs/svt-vp9](https://github.com/gentoo/guru/tree/dev/media-libs/svt-vp9) | 0.3.0 | [0.3.1](https://github.com/OpenVisualCloud/SVT-VP9) | [-](-) |
| [media-libs/vvdec](https://github.com/gentoo/guru/tree/dev/media-libs/vvdec) | 2.3.0 | [3.1.0](https://github.com/fraunhoferhhi/vvdec) | [benoit.dufour@mail.com](https://repology.org/maintainer/benoit.dufour@mail.com) |
| [media-libs/vvenc](https://github.com/gentoo/guru/tree/dev/media-libs/vvenc) | 1.11.1 | [1.14.0-rc1](https://github.com/fraunhoferhhi/vvenc) | [benoit.dufour@mail.com](https://repology.org/maintainer/benoit.dufour@mail.com) |
| [media-libs/xrizer](https://github.com/gentoo/guru/tree/dev/media-libs/xrizer) | 0.3.0 | [0.4](https://github.com/Supreeeme/xrizer) | [sam@binarycake.ca](https://repology.org/maintainer/sam@binarycake.ca) |
| [media-sound/corrscope](https://github.com/gentoo/guru/tree/dev/media-sound/corrscope) | 0.10.1 | [0.11.0](https://github.com/corrscope/corrscope) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [media-sound/furnace](https://github.com/gentoo/guru/tree/dev/media-sound/furnace) | 0.6.7 | [0.6.8.3](https://github.com/tildearrow/furnace) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [media-sound/jacktrip](https://github.com/gentoo/guru/tree/dev/media-sound/jacktrip) | 2.4.0 | [2.7.1](https://github.com/jacktrip/jacktrip) | [nex+b-g-o@nexadn.de](https://repology.org/maintainer/nex+b-g-o@nexadn.de) |
| [media-sound/kew](https://github.com/gentoo/guru/tree/dev/media-sound/kew) | 2.4.4 | [3.7.3](https://github.com/ravachol/kew) | [emergeviolet@protonmail.com](https://repology.org/maintainer/emergeviolet@protonmail.com) |
| [media-sound/libcava](https://github.com/gentoo/guru/tree/dev/media-sound/libcava) | 0.10.2 | [0.10.7-beta](https://github.com/LukashonakV/cava) | [ceres@ceressees.dev](https://repology.org/maintainer/ceres@ceressees.dev) |
| [media-sound/mopidy](https://github.com/gentoo/guru/tree/dev/media-sound/mopidy) | 3.4.2 | [4.0.0a13](https://github.com/mopidy/mopidy) | [-](-) |
| [media-sound/noson-app](https://github.com/gentoo/guru/tree/dev/media-sound/noson-app) | 5.6.8 | [5.6.13](https://github.com/janbar/noson-app) | [danipo@gmail.com](https://repology.org/maintainer/danipo@gmail.com) |
| [media-sound/nuclear-bin](https://github.com/gentoo/guru/tree/dev/media-sound/nuclear-bin) | 0.6.30 | [0.6.48](https://github.com/nukeop/nuclear) | [-](-) |
| [media-sound/opensoundmeter](https://github.com/gentoo/guru/tree/dev/media-sound/opensoundmeter) | 1.2.2 | [1.5.2](https://github.com/psmokotnin/osm) | [nex+b-g-o@nexadn.de](https://repology.org/maintainer/nex+b-g-o@nexadn.de) |
| [media-sound/openutau](https://github.com/gentoo/guru/tree/dev/media-sound/openutau) | 0.1.529 | [0.1.567](https://github.com/stakira/OpenUtau) | [chinh4thepro@gmail.com](https://repology.org/maintainer/chinh4thepro@gmail.com) |
| [media-sound/qloud](https://github.com/gentoo/guru/tree/dev/media-sound/qloud) | 1.4.2 | [1.4.3](https://github.com/molke-productions/qloud) | [-](-) |
| [media-sound/rsgain](https://github.com/gentoo/guru/tree/dev/media-sound/rsgain) | 3.5.3 | [3.6](https://github.com/complexlogic/rsgain) | [misanthropos@gmx.net](https://repology.org/maintainer/misanthropos@gmx.net) |
| [media-sound/spot](https://github.com/gentoo/guru/tree/dev/media-sound/spot) | 0.4.0 | [0.5.0](https://github.com/xou816/spot) | [-](-) |
| [media-sound/spotify-player](https://github.com/gentoo/guru/tree/dev/media-sound/spotify-player) | 0.21.1 | [0.21.3](https://github.com/aome510/spotify-player) | [brettalcox@proton.me](https://repology.org/maintainer/brettalcox@proton.me) |
| [media-sound/spotube-bin](https://github.com/gentoo/guru/tree/dev/media-sound/spotube-bin) | 3.8.0 | [5.1.0](https://github.com/KRTirtho/spotube) | [aidenwingard2@gmail.com](https://repology.org/maintainer/aidenwingard2@gmail.com) |
| [media-sound/Tauon](https://github.com/gentoo/guru/tree/dev/media-sound/Tauon) | 8.2.3 | [Pre-release-Tauon-2026-01-17-82ee919](https://github.com/Taiko2k/Tauon) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [media-sound/tidal-hifi-bin](https://github.com/gentoo/guru/tree/dev/media-sound/tidal-hifi-bin) | 5.17.0 | [6.0.1](https://github.com/Mastermindzh/tidal-hifi) | [kostadinshishmanov@protonmail.com](https://repology.org/maintainer/kostadinshishmanov@protonmail.com) |
| [media-video/clapper](https://github.com/gentoo/guru/tree/dev/media-video/clapper) | 0.8.0 | [0.10.0](https://github.com/Rafostar/clapper) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [media-video/kikoplay](https://github.com/gentoo/guru/tree/dev/media-video/kikoplay) | 0.9.3 | [2.0.0](https://github.com/KikoPlayProject/KikoPlay) | [-](-) |
| [media-video/kooha](https://github.com/gentoo/guru/tree/dev/media-video/kooha) | 2.2.3 | [2.3.1](https://github.com/SeaDve/Kooha) | [-](-) |
| [media-video/lossless-cut](https://github.com/gentoo/guru/tree/dev/media-video/lossless-cut) | 3.64.0 | [3.67.2](https://github.com/mifi/lossless-cut) | [-](-) |
| [media-video/obs-multi-rtmp](https://github.com/gentoo/guru/tree/dev/media-video/obs-multi-rtmp) | 0.6.0.1 | [0.7.3.2](https://github.com/sorayuki/obs-multi-rtmp) | [adel.ks@zegrapher.com](https://repology.org/maintainer/adel.ks@zegrapher.com) |
| [media-video/webcamize](https://github.com/gentoo/guru/tree/dev/media-video/webcamize) | 2.0.0 | [2.0.1](https://github.com/cowtoolz/webcamize) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [mpv-plugin/SmartCopyPaste](https://github.com/gentoo/guru/tree/dev/mpv-plugin/SmartCopyPaste) | 3.1 | [25-09-2023](https://github.com/Eisa01/mpv-scripts) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [net-analyzer/gping](https://github.com/gentoo/guru/tree/dev/net-analyzer/gping) | 1.20.1 | [gping-v1.20.1](https://github.com/orf/gping) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [net-client/kristall](https://github.com/gentoo/guru/tree/dev/net-client/kristall) | 0.4 | [V0.4](https://github.com/MasterQ32/kristall) | [-](-) |
| [net-im/element-desktop](https://github.com/gentoo/guru/tree/dev/net-im/element-desktop) | 1.12.7 | [1.12.8](https://github.com/element-hq/element-web) | [filip@kszczot.pl](https://repology.org/maintainer/filip@kszczot.pl) |
| [net-im/gomuks](https://github.com/gentoo/guru/tree/dev/net-im/gomuks) | 0.3.1 | [0.2601.0](https://github.com/tulir/gomuks) | [amber@vnetwork.com](https://repology.org/maintainer/amber@vnetwork.com) |
| [net-im/gurk-rs](https://github.com/gentoo/guru/tree/dev/net-im/gurk-rs) | 0.7.1 | [0.8.1](https://github.com/boxdot/gurk-rs) | [beatussum@protonmail.com](https://repology.org/maintainer/beatussum@protonmail.com) |
| [net-im/manyverse-bin](https://github.com/gentoo/guru/tree/dev/net-im/manyverse-bin) | 0.2310.9 | [0.2407.28-beta](https://github.com/staltz/manyverse) | [-](-) |
| [net-im/maubot](https://github.com/gentoo/guru/tree/dev/net-im/maubot) | 0.5.1 | [0.6.0](https://github.com/maubot/maubot) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [net-im/mautrix-discord](https://github.com/gentoo/guru/tree/dev/net-im/mautrix-discord) | 0.7.2 | [0.2511.0](https://github.com/mautrix/slack) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [net-im/mautrix-meta](https://github.com/gentoo/guru/tree/dev/net-im/mautrix-meta) | 0.2510.0 | [0.2512.0](https://github.com/mautrix/meta) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [net-im/mautrix-slack](https://github.com/gentoo/guru/tree/dev/net-im/mautrix-slack) | 0.1.4 | [0.2511.0](https://github.com/mautrix/slack) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [net-im/mautrix-whatsapp](https://github.com/gentoo/guru/tree/dev/net-im/mautrix-whatsapp) | 0.12.5 | [0.2601.0](https://github.com/mautrix/whatsapp) | [gentoo@chuso.net](https://repology.org/maintainer/gentoo@chuso.net) |
| [net-im/session-desktop-bin](https://github.com/gentoo/guru/tree/dev/net-im/session-desktop-bin) | 1.15.2 | [1.17.6](https://github.com/session-foundation/session-desktop) | [paul007-dev@outlook.com](https://repology.org/maintainer/paul007-dev@outlook.com) |
| [net-im/teams-for-linux](https://github.com/gentoo/guru/tree/dev/net-im/teams-for-linux) | 2.6.18 | [2.6.19](https://github.com/IsmaelMartinez/teams-for-linux) | [colonia_duck@posteo.net](https://repology.org/maintainer/colonia_duck@posteo.net) |
| [net-im/zapzap](https://github.com/gentoo/guru/tree/dev/net-im/zapzap) | 6.2.4 | [6.2.7](https://github.com/rafatosta/zapzap) | [esteve.varela@gmail.com](https://repology.org/maintainer/esteve.varela@gmail.com) |
| [net-irc/tiny](https://github.com/gentoo/guru/tree/dev/net-irc/tiny) | 0.12.0 | [0.13.0](https://github.com/osa1/tiny) | [](https://repology.org/maintainer/) |
| [net-libs/ixwebsocket](https://github.com/gentoo/guru/tree/dev/net-libs/ixwebsocket) | 11.4.4 | [11.4.6](https://github.com/machinezone/IXWebSocket) | [rmicielski@purelymail.com](https://repology.org/maintainer/rmicielski@purelymail.com) |
| [net-libs/kcgi](https://github.com/gentoo/guru/tree/dev/net-libs/kcgi) | 0.13.4 | [VERSION_1_0_1](https://github.com/kristapsdz/kcgi) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [net-mail/hydroxide](https://github.com/gentoo/guru/tree/dev/net-mail/hydroxide) | 0.2.29 | [0.2.30](https://github.com/emersion/hydroxide) | [leohdz172@proton.me](https://repology.org/maintainer/leohdz172@proton.me) |
| [net-misc/FORT-validator](https://github.com/gentoo/guru/tree/dev/net-misc/FORT-validator) | 1.6.2 | [1.6.7](https://github.com/NICMx/FORT-validator) | [alarig@swordarmor.fr](https://repology.org/maintainer/alarig@swordarmor.fr) |
| [net-misc/freetube-bin](https://github.com/gentoo/guru/tree/dev/net-misc/freetube-bin) | 0.23.12 | [0.23.12-beta](https://github.com/FreeTubeApp/FreeTube) | [-](-) |
| [net-misc/gdown](https://github.com/gentoo/guru/tree/dev/net-misc/gdown) | 5.2.0 | [5.2.1](https://github.com/wkentaro/gdown) | [-](-) |
| [net-misc/iipsrv](https://github.com/gentoo/guru/tree/dev/net-misc/iipsrv) | 1.3 | [iipsrv-1.3](https://github.com/ruven/iipsrv) | [ruven@users.sourceforge.net](https://repology.org/maintainer/ruven@users.sourceforge.net) |
| [net-misc/jool](https://github.com/gentoo/guru/tree/dev/net-misc/jool) | 4.1.14 | [4.2.0-rc3](https://github.com/NICMx/Jool) | [nicolas.parlant@parhuet.fr](https://repology.org/maintainer/nicolas.parlant@parhuet.fr) |
| [net-misc/jool-modules](https://github.com/gentoo/guru/tree/dev/net-misc/jool-modules) | 4.1.14 | [4.2.0-rc3](https://github.com/NICMx/Jool) | [nicolas.parlant@parhuet.fr](https://repology.org/maintainer/nicolas.parlant@parhuet.fr) |
| [net-misc/megasync](https://github.com/gentoo/guru/tree/dev/net-misc/megasync) | 6.1.0.2 | [6.1.1.0_Linux](https://github.com/meganz/MEGAsync) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [net-misc/myip](https://github.com/gentoo/guru/tree/dev/net-misc/myip) | 1.2.1 | [1.2.4](https://github.com/Snawoot/myip) | [marco@sirabella.org](https://repology.org/maintainer/marco@sirabella.org) |
| [net-misc/ooni-probe-cli](https://github.com/gentoo/guru/tree/dev/net-misc/ooni-probe-cli) | 3.24.0 | [3.28.0](https://github.com/ooni/probe-cli) | [eli.burch@burchbytes.com](https://repology.org/maintainer/eli.burch@burchbytes.com) |
| [net-misc/sshx](https://github.com/gentoo/guru/tree/dev/net-misc/sshx) | 0.2.4 | [0.4.1](https://github.com/ekzhang/sshx) | [yangmame@icloud.com](https://repology.org/maintainer/yangmame@icloud.com) |
| [net-misc/xmrig-mo](https://github.com/gentoo/guru/tree/dev/net-misc/xmrig-mo) | 6.22.2 | [6.25.0-mo1](https://github.com/MoneroOcean/xmrig) | [kaythomas@pm.me](https://repology.org/maintainer/kaythomas@pm.me) |
| [net-p2p/bisq-bin](https://github.com/gentoo/guru/tree/dev/net-p2p/bisq-bin) | 1.9.14 | [1.9.22](https://github.com/bisq-network/exchange) | [benoit.dufour@mail.com](https://repology.org/maintainer/benoit.dufour@mail.com) |
| [net-p2p/gridcoin](https://github.com/gentoo/guru/tree/dev/net-p2p/gridcoin) | 5.4.9.0 | [5.4.9.7-testnet](https://github.com/gridcoin-community/Gridcoin-Research) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [net-p2p/ipfs-desktop-bin](https://github.com/gentoo/guru/tree/dev/net-p2p/ipfs-desktop-bin) | 0.43.0 | [0.47.0](https://github.com/ipfs/ipfs-desktop) | [dawn_xu_helloworld@163.com](https://repology.org/maintainer/dawn_xu_helloworld@163.com) |
| [net-p2p/monero-gui-bin](https://github.com/gentoo/guru/tree/dev/net-p2p/monero-gui-bin) | 0.18.4.3 | [0.18.4.5](https://github.com/monero-project/monero-gui) | [justin026@protonmail.com](https://repology.org/maintainer/justin026@protonmail.com) |
| [net-p2p/syncthingtray](https://github.com/gentoo/guru/tree/dev/net-p2p/syncthingtray) | 2.0.5 | [2.0.6](https://github.com/Martchus/syncthingtray) | [esteve.varela@gmail.com](https://repology.org/maintainer/esteve.varela@gmail.com) |
| [net-print/captdriver](https://github.com/gentoo/guru/tree/dev/net-print/captdriver) | 0.1.4 | [0.1.4-m5](https://github.com/mounaiban/captdriver) | [dangduong31205@gmail.com](https://repology.org/maintainer/dangduong31205@gmail.com) |
| [net-proxy/MTProxy](https://github.com/gentoo/guru/tree/dev/net-proxy/MTProxy) | 3.0.4 | [3.0.8](https://github.com/GetPageSpeed/MTProxy) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [net-proxy/opera-proxy](https://github.com/gentoo/guru/tree/dev/net-proxy/opera-proxy) | 1.13.1 | [1.15.0](https://github.com/Snawoot/opera-proxy) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [net-proxy/shadowsocks-rust](https://github.com/gentoo/guru/tree/dev/net-proxy/shadowsocks-rust) | 1.22.0 | [1.24.0](https://github.com/shadowsocks/shadowsocks-rust) | [strdenis02@gmail.com](https://repology.org/maintainer/strdenis02@gmail.com) |
| [net-voip/discover-overlay](https://github.com/gentoo/guru/tree/dev/net-voip/discover-overlay) | 0.7.8 | [0.7.9](https://github.com/trigg/Discover) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [net-vpn/GlobalProtect-openconnect](https://github.com/gentoo/guru/tree/dev/net-vpn/GlobalProtect-openconnect) | 2.4.4 | [2.5.1](https://github.com/yuezk/GlobalProtect-openconnect) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [package](packageLink) | ebuildVersion | [sourceVersion](sourceTagsLink) | [maintainerEmail](repologyEmail) |
| [sci-electronics/cocotb-bus](https://github.com/gentoo/guru/tree/dev/sci-electronics/cocotb-bus) | 0.2.1 | [0.3.0](https://github.com/cocotb/cocotb-bus) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [sci-electronics/cocotb](https://github.com/gentoo/guru/tree/dev/sci-electronics/cocotb) | 1.9.2 | [2.0.1](https://github.com/cocotb/cocotb) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [sci-electronics/kactus2](https://github.com/gentoo/guru/tree/dev/sci-electronics/kactus2) | 3.13.3 | [3.14.0](https://github.com/kactus2/kactus2dev) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [sci-electronics/liblxi](https://github.com/gentoo/guru/tree/dev/sci-electronics/liblxi) | 1.20 | [1.22](https://github.com/lxi-tools/liblxi) | [gentoo@taujhe.de](https://repology.org/maintainer/gentoo@taujhe.de) |
| [sci-electronics/lxi-tools](https://github.com/gentoo/guru/tree/dev/sci-electronics/lxi-tools) | 2.7 | [2.8](https://github.com/lxi-tools/lxi-tools) | [gentoo@taujhe.de](https://repology.org/maintainer/gentoo@taujhe.de) |
| [sci-electronics/qucs-s](https://github.com/gentoo/guru/tree/dev/sci-electronics/qucs-s) | 25.1.2 | [25.2.0](https://github.com/ra3xdh/qucs_s) | [ljn0099@hotmail.com](https://repology.org/maintainer/ljn0099@hotmail.com) |
| [sci-electronics/slang](https://github.com/gentoo/guru/tree/dev/sci-electronics/slang) | 9.1 | [10.0](https://github.com/MikePopoloski/slang) | [vowstar@gmail.com](https://repology.org/maintainer/vowstar@gmail.com) |
| [sci-electronics/svls](https://github.com/gentoo/guru/tree/dev/sci-electronics/svls) | 0.2.11 | [0.2.14](https://github.com/dalance/svls) | [-](-) |
| [sci-libs/onnxruntime-bin](https://github.com/gentoo/guru/tree/dev/sci-libs/onnxruntime-bin) | 1.22.0 | [1.23.2](https://github.com/microsoft/onnxruntime) | [hurikhan77+bgo@gmail.com](https://repology.org/maintainer/hurikhan77+bgo@gmail.com) |
| [sci-libs/poselib](https://github.com/gentoo/guru/tree/dev/sci-libs/poselib) | 2.0.4 | [2.0.5](https://github.com/PoseLib/PoseLib) | [spam-to-marten@wadenback.se](https://repology.org/maintainer/spam-to-marten@wadenback.se) |
| [sci-misc/boinc-wrapper](https://github.com/gentoo/guru/tree/dev/sci-misc/boinc-wrapper) | 26019 | [dockerwrapper/17](https://github.com/BOINC/boinc) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [sci-misc/llama-cpp](https://github.com/gentoo/guru/tree/dev/sci-misc/llama-cpp) | 0 | [b7762](https://github.com/ggml-org/llama.cpp) | [zl29ah@gmail.com](https://repology.org/maintainer/zl29ah@gmail.com) |
| [sci-ml/ollama](https://github.com/gentoo/guru/tree/dev/sci-ml/ollama) | 0.13.5 | [0.14.3-rc1](https://github.com/ollama/ollama) | [negril.nx+gentoo@gmail.com](https://repology.org/maintainer/negril.nx+gentoo@gmail.com) |
| [sci-physics/openmodelica](https://github.com/gentoo/guru/tree/dev/sci-physics/openmodelica) | 1.26.0 | [1.26.1](https://github.com/OpenModelica/OpenModelica) | [ivan.lloro.boada@gmail.com](https://repology.org/maintainer/ivan.lloro.boada@gmail.com) |
| [sec-keys/signify-keys-gmid](https://github.com/gentoo/guru/tree/dev/sec-keys/signify-keys-gmid) | 2.1 | [2.1.1](https://github.com/omar-polo/gmid) | [-](-) |
| [sys-apps/colortail](https://github.com/gentoo/guru/tree/dev/sys-apps/colortail) | 0.3.3 | [0.3.5](https://github.com/joakim666/colortail) | [me@aidanharr.is](https://repology.org/maintainer/me@aidanharr.is) |
| [sys-apps/corefreq](https://github.com/gentoo/guru/tree/dev/sys-apps/corefreq) | 2.0.9 | [2.1.0](https://github.com/cyring/CoreFreq) | [-](-) |
| [sys-apps/deepcool-digital-linux](https://github.com/gentoo/guru/tree/dev/sys-apps/deepcool-digital-linux) | 0.10.2 | [0.10.2-alpha](https://github.com/Nortank12/deepcool-digital-linux) | [filip@kszczot.pl](https://repology.org/maintainer/filip@kszczot.pl) |
| [sys-apps/dool](https://github.com/gentoo/guru/tree/dev/sys-apps/dool) | 1.3.2 | [1.3.8](https://github.com/scottchiefbaker/dool) | [flow@gentoo.org](https://repology.org/maintainer/flow@gentoo.org) |
| [sys-apps/dysk](https://github.com/gentoo/guru/tree/dev/sys-apps/dysk) | 2.10.1 | [3.6.0b](https://github.com/Canop/dysk) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [sys-apps/fselect](https://github.com/gentoo/guru/tree/dev/sys-apps/fselect) | 0.8.6 | [0.9.2](https://github.com/jhspetersson/fselect) | [contact@qaidvoid.dev](https://repology.org/maintainer/contact@qaidvoid.dev) |
| [sys-apps/gat](https://github.com/gentoo/guru/tree/dev/sys-apps/gat) | 0.23.1 | [0.26.0](https://github.com/koki-develop/gat) | [kupravagoodman@proton.me](https://repology.org/maintainer/kupravagoodman@proton.me) |
| [sys-apps/hex](https://github.com/gentoo/guru/tree/dev/sys-apps/hex) | 0.6.0 | [0.7.0](https://github.com/sitkevij/hex) | [lo48576@hard-wi.red](https://repology.org/maintainer/lo48576@hard-wi.red) |
| [sys-apps/mission-center](https://github.com/gentoo/guru/tree/dev/sys-apps/mission-center) | 1.1.0 | [3.3.0](https://github.com/Syllo/nvtop) | [-](-) |
| [sys-apps/openSeaChest](https://github.com/gentoo/guru/tree/dev/sys-apps/openSeaChest) | 24.08.1 | [mactions_rel_test_v1](https://github.com/Seagate/openSeaChest) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [sys-apps/ov](https://github.com/gentoo/guru/tree/dev/sys-apps/ov) | 0.32.0 | [0.50.2](https://github.com/noborus/ov) | [-](-) |
| [sys-apps/pnpm-bin](https://github.com/gentoo/guru/tree/dev/sys-apps/pnpm-bin) | 10.19.0 | [11.0.0-alpha.3](https://github.com/pnpm/pnpm) | [-](-) |
| [sys-apps/qjournalctl](https://github.com/gentoo/guru/tree/dev/sys-apps/qjournalctl) | 0.6.2 | [0.6.4](https://github.com/pentix/qjournalctl) | [ahvenas@gmail.com](https://repology.org/maintainer/ahvenas@gmail.com) |
| [sys-auth/hyprpolkitagent](https://github.com/gentoo/guru/tree/dev/sys-auth/hyprpolkitagent) | 0.1.2 | [0.1.3](https://github.com/hyprwm/hyprpolkitagent) | [johu@gmx.de](https://repology.org/maintainer/johu@gmx.de) |
| [sys-boot/grml-rescueboot](https://github.com/gentoo/guru/tree/dev/sys-boot/grml-rescueboot) | 0.6.1 | [0.6.7](https://github.com/grml/grml-rescueboot) | [-](-) |
| [sys-boot/ventoy-bin](https://github.com/gentoo/guru/tree/dev/sys-boot/ventoy-bin) | 1.0.98 | [1.1.10](https://github.com/ventoy/Ventoy) | [-](-) |
| [sys-boot/zfsbootmenu](https://github.com/gentoo/guru/tree/dev/sys-boot/zfsbootmenu) | 3.0.1 | [3.1.0](https://github.com/zbm-dev/zfsbootmenu) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [sys-cluster/genders](https://github.com/gentoo/guru/tree/dev/sys-cluster/genders) | 1.28.1 | [genders-1-32-1](https://github.com/chaos/genders) | [-](-) |
| [sys-cluster/kops-bin](https://github.com/gentoo/guru/tree/dev/sys-cluster/kops-bin) | 1.31.0 | [1.35.0-alpha.1](https://github.com/kubernetes/kops) | [me@dmdutra.dev](https://repology.org/maintainer/me@dmdutra.dev) |
| [sys-fs/gcsfuse](https://github.com/gentoo/guru/tree/dev/sys-fs/gcsfuse) | 2.11.2 | [3.5.6](https://github.com/GoogleCloudPlatform/gcsfuse) | [mathieu.tortuyaux@gmail.com](https://repology.org/maintainer/mathieu.tortuyaux@gmail.com) |
| [sys-fs/gdu](https://github.com/gentoo/guru/tree/dev/sys-fs/gdu) | 5.25.0 | [5.32.0](https://github.com/dundee/gdu) | [-](-) |
| [sys-fs/jefferson](https://github.com/gentoo/guru/tree/dev/sys-fs/jefferson) | 0.4.6 | [0.4.7](https://github.com/onekey-sec/jefferson) | [davidroman96@gmail.com](https://repology.org/maintainer/davidroman96@gmail.com) |
| [sys-fs/mountpoint-s3-bin](https://github.com/gentoo/guru/tree/dev/sys-fs/mountpoint-s3-bin) | 1.1.1 | [mountpoint-s3-1.21.0](https://github.com/awslabs/mountpoint-s3) | [-](-) |
| [sys-libs/cyclonedds](https://github.com/gentoo/guru/tree/dev/sys-libs/cyclonedds) | 0.10.3 | [0.10.5](https://github.com/eclipse-cyclonedds/cyclonedds) | [-](-) |
| [sys-libs/iceoryx](https://github.com/gentoo/guru/tree/dev/sys-libs/iceoryx) | 2.0.3 | [2.0.6](https://github.com/eclipse-iceoryx/iceoryx) | [-](-) |
| [sys-power/auto-cpufreq](https://github.com/gentoo/guru/tree/dev/sys-power/auto-cpufreq) | 2.6.0 | [3.0.0](https://github.com/AdnanHodzic/auto-cpufreq) | [pascal.jaeger@leimstift.de](https://repology.org/maintainer/pascal.jaeger@leimstift.de) |
| [sys-power/fan2go](https://github.com/gentoo/guru/tree/dev/sys-power/fan2go) | 0.9.2 | [0.11.1](https://github.com/markusressel/fan2go) | [-](-) |
| [sys-power/nvidia-exec](https://github.com/gentoo/guru/tree/dev/sys-power/nvidia-exec) | 0.2.7 | [0.3.2](https://github.com/pedro00dk/nvidia-exec) | [gonegrier.duarte@gmail.com](https://repology.org/maintainer/gonegrier.duarte@gmail.com) |
| [sys-process/forkstat](https://github.com/gentoo/guru/tree/dev/sys-process/forkstat) | 0.03.02 | [V0.04.00](https://github.com/ColinIanKing/forkstat) | [carana2099@gmail.com](https://repology.org/maintainer/carana2099@gmail.com) |
| [sys-process/nohang](https://github.com/gentoo/guru/tree/dev/sys-process/nohang) | 0.2.0 | [0.3.0](https://github.com/hakavlad/nohang) | [norbiros@protonmail.com](https://repology.org/maintainer/norbiros@protonmail.com) |
| [sys-process/pipectl](https://github.com/gentoo/guru/tree/dev/sys-process/pipectl) | 0.5.0 | [0.5.1](https://github.com/Ferdi265/pipectl) | [rolferen@gmail.com](https://repology.org/maintainer/rolferen@gmail.com) |
| [sys-process/task-spooler](https://github.com/gentoo/guru/tree/dev/sys-process/task-spooler) | 1.3.0 | [2.0.0](https://github.com/justanhduc/task-spooler) | [adel.ks@zegrapher.com](https://repology.org/maintainer/adel.ks@zegrapher.com) |
| [www-apps/code-server-bin](https://github.com/gentoo/guru/tree/dev/www-apps/code-server-bin) | 4.90.3 | [4.108.1](https://github.com/coder/code-server) | [-](-) |
| [www-apps/freshrss](https://github.com/gentoo/guru/tree/dev/www-apps/freshrss) | 1.26.3 | [1.28.0](https://github.com/FreshRSS/FreshRSS) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [www-apps/goatcounter](https://github.com/gentoo/guru/tree/dev/www-apps/goatcounter) | 2.6.0 | [2.7.0](https://github.com/arp242/goatcounter) | [cyber+gentoo@sysrq.in](https://repology.org/maintainer/cyber+gentoo@sysrq.in) |
| [www-apps/uwebsockets](https://github.com/gentoo/guru/tree/dev/www-apps/uwebsockets) | 20.62.0 | [20.74.0](https://github.com/uNetworking/uWebSockets) | [gentoo@aisha.cc](https://repology.org/maintainer/gentoo@aisha.cc) |
| [www-apps/whoogle-search](https://github.com/gentoo/guru/tree/dev/www-apps/whoogle-search) | 0.9.3 | [1.2.2](https://github.com/benbusby/whoogle-search) | [cat@aulucya.gay](https://repology.org/maintainer/cat@aulucya.gay) |
| [www-apps/zola](https://github.com/gentoo/guru/tree/dev/www-apps/zola) | 0.21.0 | [0.22.0](https://github.com/getzola/zola) | [-](-) |
| [www-client/helium-bin](https://github.com/gentoo/guru/tree/dev/www-client/helium-bin) | 0.7.10.1 | [0.8.1.1](https://github.com/imputnet/helium-linux) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [www-client/nyxt](https://github.com/gentoo/guru/tree/dev/www-client/nyxt) | 3.12.0 | [4.0.0-pre-release-13](https://github.com/atlas-engineer/nyxt) | [-](-) |
| [www-misc/dufs](https://github.com/gentoo/guru/tree/dev/www-misc/dufs) | 0.40.0 | [0.45.0](https://github.com/sigoden/dufs) | [-](-) |
| [www-misc/kiwix-desktop](https://github.com/gentoo/guru/tree/dev/www-misc/kiwix-desktop) | 2.4.0 | [2.5.1](https://github.com/kiwix/kiwix-desktop) | [-](-) |
| [www-misc/libkiwix](https://github.com/gentoo/guru/tree/dev/www-misc/libkiwix) | 14.0.0 | [14.1.1](https://github.com/kiwix/libkiwix) | [-](-) |
| [x11-apps/lightdm-gtk-greeter-settings](https://github.com/gentoo/guru/tree/dev/x11-apps/lightdm-gtk-greeter-settings) | 1.2.2 | [lightdm-gtk-greeter-settings-1.2.3](https://github.com/xubuntu/lightdm-gtk-greeter-settings) | [-](-) |
| [x11-drivers/OpenTabletDriver-bin](https://github.com/gentoo/guru/tree/dev/x11-drivers/OpenTabletDriver-bin) | 0.6.3.0 | [0.6.6.2](https://github.com/OpenTabletDriver/OpenTabletDriver) | [ethannij@gmail.com](https://repology.org/maintainer/ethannij@gmail.com) |
| [x11-libs/gtk-fortran](https://github.com/gentoo/guru/tree/dev/x11-libs/gtk-fortran) | 4.8.0 | [4.9.0](https://github.com/vmagnin/gtk-fortran) | [torokhov-s-a@yandex.ru](https://repology.org/maintainer/torokhov-s-a@yandex.ru) |
| [x11-misc/betterlockscreen](https://github.com/gentoo/guru/tree/dev/x11-misc/betterlockscreen) | 4.4.0 | [4.4.1-beta-1](https://github.com/betterlockscreen/betterlockscreen) | [petrus.zy.07@gmail.com](https://repology.org/maintainer/petrus.zy.07@gmail.com) |
| [x11-misc/greenclip-bin](https://github.com/gentoo/guru/tree/dev/x11-misc/greenclip-bin) | 4.2 | [4.3](https://github.com/erebe/greenclip) | [-](-) |
| [x11-misc/i3lock-color](https://github.com/gentoo/guru/tree/dev/x11-misc/i3lock-color) | 2.13.5 | [2.13.c.5](https://github.com/Raymo111/i3lock-color) | [petrus.zy.07@gmail.com](https://repology.org/maintainer/petrus.zy.07@gmail.com) |
| [x11-misc/i3-restore](https://github.com/gentoo/guru/tree/dev/x11-misc/i3-restore) | 4.1 | [5.0](https://github.com/jdholtz/i3-restore) | [-](-) |
| [x11-misc/matugen](https://github.com/gentoo/guru/tree/dev/x11-misc/matugen) | 2.4.1 | [3.1.0](https://github.com/InioX/matugen) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [x11-misc/pywal16](https://github.com/gentoo/guru/tree/dev/x11-misc/pywal16) | 3.7.2 | [3.8.13](https://github.com/eylles/pywal16) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [x11-terms/tabby-bin](https://github.com/gentoo/guru/tree/dev/x11-terms/tabby-bin) | 1.0.221 | [1.0.230](https://github.com/Eugeny/tabby) | [-](-) |
| [x11-terms/tym](https://github.com/gentoo/guru/tree/dev/x11-terms/tym) | 3.5.1 | [3.5.2](https://github.com/endaaman/tym) | [rolferen@gmail.com](https://repology.org/maintainer/rolferen@gmail.com) |
| [x11-themes/adw-gtk3](https://github.com/gentoo/guru/tree/dev/x11-themes/adw-gtk3) | 5.10 | [6.4](https://github.com/lassekongo83/adw-gtk3) | [julien@jroy.ca](https://repology.org/maintainer/julien@jroy.ca) |
| [x11-themes/arc-darkest-colors](https://github.com/gentoo/guru/tree/dev/x11-themes/arc-darkest-colors) | 0 | [1.0](https://github.com/rtlewis88/rtl88-Themes) | [tea+gentoo@cuddleslut.fr](https://repology.org/maintainer/tea+gentoo@cuddleslut.fr) |
| [x11-themes/catppuccin-neovim](https://github.com/gentoo/guru/tree/dev/x11-themes/catppuccin-neovim) | 1.7.0 | [1.11.0](https://github.com/catppuccin/nvim) | [somerand0mcat@hotmail.com](https://repology.org/maintainer/somerand0mcat@hotmail.com) |
| [x11-wm/qtile-extras](https://github.com/gentoo/guru/tree/dev/x11-wm/qtile-extras) | 0.33.0 | [0.34.1](https://github.com/elParaguayo/qtile-extras) | [-](-) |
<!-- end -->





<sub>Congrats, you made it to the bottom</sub>

<sub>if you can afford to pay my wifi bills, you can support me in patreon: https://www.patreon.com/IngenarelNeoJesus</sub>

<sub>i don't like putting this in my projects, but until my dropout ass finds a way to get a job/proper funding, i have
no choice but to accept donations, which i personally don't want to trust me</sub>
