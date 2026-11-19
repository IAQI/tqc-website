# TQC website

[![Netlify Status](https://api.netlify.com/api/v1/badges/2d3b6d5c-0a7d-4fea-a32e-9a1f7cbaa79a/deploy-status)](https://app.netlify.com/sites/tqc-website/deploys)

Hugo-powered website for the Theory of Quantum Computation, Communication and Cryptography (TQC), live at https://tqc-conference.org/ (and https://tqc-website.netlify.app). TQC is a leading annual international conference for students and researchers working in the theoretical aspects of quantum information science.

[Hugo](https://gohugo.io/) is a fast static website generator. Deploy previews and production builds are generously hosted by [Netlify](https://www.netlify.com/) under an [Open Source Plan](https://www.netlify.com/legal/open-source-policy/) :heart:!

This repository was forked from https://github.com/QCrypt/qcrypt-website in 2025 when TQC moved to a shared multi-year website repository. The original QCrypt repository has been maintained since 2020 by [Christian Schaffner](https://github.com/cschaffner).

## History
Originally based on the Hugo template from https://github.com/GDGToulouse/devfest-theme-hugo
adapted from the fork by the cloudnative-amsterdam people: https://github.com/cloudnative-amsterdam/public-website

Since 2026, the theme is shared with the QCrypt and QIP websites as the Hugo module [IAQI/conference-theme](https://github.com/IAQI/conference-theme).

This site starts with TQC 2026. Earlier editions are archived on https://tqc.iaqi.org; `/2024`, `/2025`, `/tqc-2024` and `/tqc2023` on this site redirect there.

## Working on the site

**The [website guide](https://github.com/IAQI/conference-theme/blob/main/docs/website-guide.md)** (in the shared theme) explains everything that is the same for QCrypt, TQC and QIP: running the site locally, how the content is organised, shortcodes, menus, footer, home page, team, sponsors, speakers and sessions, setting up a new year, colours. In short:

```bash
git clone https://github.com/IAQI/tqc-website.git
cd tqc-website
hugo server        # needs Hugo (extended), Dart Sass and Go; see the guide
```

Push to a branch and open a pull request to get a Netlify deploy preview; merging into `main` publishes https://tqc-conference.org.

### Using Nix

If you have [Nix](https://nixos.org/download/) installed, you can also build and run this project via:
```
$ nix build https://github.com/IAQI/tqc-website.git
```
or if you want to work with a local copy:
```
$ git clone https://github.com/IAQI/tqc-website.git
$ cd tqc-website
$ nix build
```

The resulting static website will be placed in `result/share/tqc-website/`, and you can preview it via:
```
$ ./result/bin/tqc-website
```

If you want to start a debug server with hot reload (quicker to see changes), just run instead:
```
$ nix develop
$ hugo server
```

To automatically load `nix develop`, you can install `nix-direnv` and run:
```
$ echo 'use flake' > .envrc
$ direnv allow .
```

Note that if you want to run the production version with hot-reload (via `hugo serve -e "production"`), you will need to first run `npm i` to install in the current folder the `npm` dependencies needed by `hugo`. Due to [this hugo issue](https://github.com/gohugoio/hugo/issues/15580), you may also need to remove any folder linking outside of the current directory (like `result` produced by `nix` or `.direnv`) or [disable `hugo`'s sandbox](https://gohugo.io/configuration/security/).

## Setting up the next year

Follow the guide's [new year](https://github.com/IAQI/conference-theme/blob/main/docs/website-guide.md#a-new-year) section (`new_year.py` copies the previous year's pages as drafts). TQC specifics:

### design
1. create a new logo, see previous editions for inspiration.
2. choose a background image for the main site and make a related banner.
3. pick a related themecolor.

### Steps you will need help with
1. on https://github.com/orgs/IAQI/teams, create a new team `tqc-<year>`
2. add admins and repositories to that team
3. in Netlify, add the new admin as collaborator to the `tqc-website` site
4. on https://api.slack.com/apps/A01P06YNCCU/incoming-webhooks , create a new Webhook (on the bottom of the page)
5. paste the Webhook URL into Netlify site notifications for the current TQC site (for deploy successful and deploy failed)
6. add admins to Slack channel
7. We probably need new email addresses like `<year>@tqc-conference.org` and `pcchairs<year>@tqc-conference.org`.
8. connect new admins to admins from last year
9. Is it time to update the hugo version? check what needs to be updated.

## Accepted papers, schedule, presenters and videos
The shared theme's [README](https://github.com/IAQI/conference-theme#from-accepted-papers-to-the-schedule) describes the pipeline, from the HotCRP export to a schedule with linked papers, presenters and videos. In short (run from this folder, with `conference-theme` cloned next to it):

1. **Accepted papers and posters:** `python3 ../conference-theme/scripts/sanitize_hotcrp_json.py private_data/hotcrp.json --decision accept -o data/accepted-papers-2027.json` (same for `posters-2027.json`)
2. **Schedule:** fill in `program/program-2027.csv` (one row per slot; see the theme README), then `python3 ../conference-theme/scripts/generate_schedule.py --year 2027 --program program/program-2027.csv`
3. **Presenters:** `python3 ../conference-theme/scripts/mark_presenters.py --year 2027 --registrations private_data/<registration exports>` (for 2026 this was run with the three registration exports listed in the commit history), or from QuantumDB: `python3 ../conference-theme/scripts/quantumdb_presenters.py --venue tqc --year 2027`
4. **Videos:** `python3 ../conference-theme/scripts/fetch_videos.py --year 2027 --playlist <YouTube playlist URL>`

Raw HotCRP exports and registration lists contain personal data: keep them in `private_data/` (git-ignored), never in `data/` or `scripts/`.

## What this site does differently
TQC keeps its own versions of a few theme styles, in [assets/style/](assets/style/): the colours, including those of the schedule categories (`_root.scss`), talk durations (`partials/_type.scss`), and the home page, banner and sponsor layout (`pages/_home.scss`, `pages/_with_banner.scss`, `partials/_banner.scss`, `partials/_base.scss`, `partials/_jumbo.scss`, `partials/_partners_group.scss`). This year's colours are in `theme-2026.scss`. Fixes to these parts of the shared theme do not reach TQC automatically; everything else, including the schedule and session styles, comes from the theme.

Speaker photos on schedule cards can be hidden with `programScheduleSpeakers = false` under `[params]` in `hugo.toml`; this site does not set it, so the theme's default (photos shown) applies.

## Upgrade the theme

To upgrade the conference theme, run:
```
$ hugo mod get -u github.com/IAQI/conference-theme
```

Note that this will break nix's packaging since it needs to hardcode the hash of the theme for purity. To fix nix, in `flake.nix`, replace the `outputHash` with:
```
outputHash = "";
```
Then run (with nix installed):
```
$ nix --extra-experimental-features "nix-command flakes" build
```
You should get an error like:
```
         specified: sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
            got:    sha256-ZD+lwouj4XLEzZk0CnjvqgAvU8HFZLHa57mvYW0Ctr4=
```
Use this hash to replace the hash in `flake.nix`:
```
outputHash = "sha256-ZD+lwouj4XLEzZk0CnjvqgAvU8HFZLHa57mvYW0Ctr4=";
```
To test your change, **after adding to git all needed files** (nix will only consider files tracked by git for reproducibility reasons), you can then run again:
```
$ nix --extra-experimental-features "nix-command flakes" build
$ ./result/bin/tqc-website
```

To work on a local copy, you can also do:
```
HUGO_MODULE_REPLACEMENTS="github.com/IAQI/conference-theme -> /absolute/path/to/conference-theme" hugo server
```
