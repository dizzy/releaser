#! /usr/bin/env sh

cd awesome-project
firstTag=$(git tag | sort -r | head -1)
secondTag=$(git tag | sort -r | head -2 | awk '{split($0, tags, "\n")} END {print tags[1]}')
git-release-notes ${secondTag}..${firstTag} > changelog-${firstTag}.html
cd ..
