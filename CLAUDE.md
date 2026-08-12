# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal academic website (kim-hammar.com) built with Jekyll and deployed by GitHub Pages. Pushing to `master` triggers the build and deploy; the committed `Gemfile` and `script/serve.sh` exist only for local preview. The `.travis.yml` and `script/cibuild.sh` are stale leftovers, not working CI.

## Commands

There are no build/test commands for deployment — the workflow is: edit Markdown, commit, push to `master`.

Local preview (serves at http://localhost:4000 with livereload):

```
script/serve.sh
```

The script uses Homebrew's keg-only `ruby@3.4` (`brew install ruby@3.4` if missing), vendors gems into `vendor/bundle` via the committed `Gemfile`, and runs `jekyll serve --future --livereload`. `--future` is needed because some posts carry future dates, which Jekyll otherwise skips. Note the preview runs Jekyll 4.x while GitHub Pages builds with Jekyll 3.9 — rendering differences are negligible for this site.

## Architecture

Standard Jekyll site, configured in `_config.yml` (permalinks `/:title`, kramdown with GFM, Rouge highlighting, MathJax enabled globally, jekyll-sitemap).

- `_posts/` — blog posts, `YYYY-MM-DD-slug.md`, front matter is just `title:` and `updated:` (default layout `post` comes from `_config.yml`).
- Top-level pages (`layout: page` front matter): `publications.md`, `talks.md`, `news.md`, `services.md`, `teaching.md`, `artifacts.md`, `projects.md`, `about.md`, `photos.md`.
- `index.html` — homepage, loops over `site.posts` grouped by year.
- `_layouts/` — `compress.html` is a vendored third-party HTML compressor; do not edit it.
- `_includes/` — `head.html` (MathJax, analytics), `nav.html`, `image2.html` (figure with caption, takes `url` and `description`), inline SVG icons.
- `_sass/main.scss` + `_sass/syntax.scss` are compiled via `assets/core.scss`; `assets/main.css` is separate hand-written CSS also linked from `head.html`.
- Asset directories: `assets/papers/` (paper PDFs), `assets/slides/` (talk PDFs), `assets/citations/` (BibTeX files), `assets/awards/`, images at the `assets/` root.

Navigation links in `_includes/nav.html` are hardcoded absolute URLs — adding a new top-level page requires editing it manually.

## Content conventions

`publications.md`, `talks.md`, `news.md`, and `teaching.md` use kramdown definition lists: a year (or date) line, then a `:   ` line containing the bolded title, venue, and authors with `**Kim Hammar**` bolded, followed by indented `[Link](...)` lines. Entries are newest-first within each section.

Adding a paper: insert an entry at the top of the relevant section in `publications.md` (use "To appear" if no link exists yet), add the BibTeX file to `assets/citations/` linked as `[bib](/assets/citations/<name>.bib)`, and optionally the PDF to `assets/papers/`. Talks follow the same pattern in `talks.md` with slides in `assets/slides/`.

Commit messages are terse: "add paper", "add talk", "update news", "add post".

## Notes

- A few Emacs backup files (`*~`) and AUCTeX bookkeeping files (`assets/citations/auto/`) are committed cruft — don't add more or mistake them for content.
- MathJax is on globally, so `$...$` math renders in posts; fenced code blocks get Rouge highlighting.
