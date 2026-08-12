#!/usr/bin/env bash
# Serve the site locally at http://localhost:4000 for previewing.
set -euo pipefail
cd "$(dirname "$0")/.."
export PATH="/opt/homebrew/opt/ruby@3.4/bin:$PATH"
bundle config set --local path vendor/bundle
bundle install
bundle exec jekyll serve --future --livereload
