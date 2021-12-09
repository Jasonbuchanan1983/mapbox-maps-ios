#!/usr/bin/env bash


git_recent_vtag() { git describe --tags --abbrev=0 "$(git_recent_vtag_hash)"; }

git_recent_vtag_hash() { git rev-list --tags='v*' --max-count=1 ; }

git_head_hash() { git rev-parse HEAD ; }

git_configure_release_user() {
    git config user.name "Release SDK bot"
    git config user.email "release-bot@mapbox.com"
}

github_writer_token()   { mbx-ci github writer token ; }
github_reader_token()   { mbx-ci github reader token ; }
github_issues_token()   { mbx-ci github issues token ; }
github_notifier_token() { mbx-ci github notifier token ; }