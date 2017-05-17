#! /usr/bin/env sh

secondTag=$(git tag | sort -r | head -2 | awk '{split($0, tags, "\n")} END {print tags[1]}')
git-release-notes ${secondTag}..${RELEASE_TAG} html > changelog-${RELEASE_TAG}.html
