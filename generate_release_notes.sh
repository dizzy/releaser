#! /usr/bin/env sh

firstTag=$(git tag | sort -r | head -1)
secondTag=$(git tag | sort -r | head -2 | awk '{split($0, tags, "\n")} END {print tags[1]}')
git-release-notes ${secondTag}..${firstTag} html > changelog-${firstTag}.html
