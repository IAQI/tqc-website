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
TQC keeps its own versions of a few theme styles, in [assets/style/](assets/style/): the colours of the schedule categories (`_root.scss`, `partials/_tags.scss`), talk durations (`partials/_type.scss`), the schedule with three parallel tracks (`pages/_schedule.scss`, `_session.scss`, `_papers.scss`), and the home page, banner and sponsor layout (`pages/_home.scss`, `_with_banner.scss`, `partials/_banner.scss`, `_base.scss`, `_jumbo.scss`, `_partners_group.scss`). Fixes to these parts of the shared theme do not reach TQC automatically.

On the schedule only the Track A/B/C and invited-talk cards link to their pages; speaker photos are hidden on schedule cards (`programScheduleSpeakers = false` in `hugo.toml`).
