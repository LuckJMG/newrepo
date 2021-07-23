#!/usr/bin/env bash

#* Start git
echo "Starting git..."

# Check if is default configuration
if [[ "$1" = -* ]]; then
  cd "$2" || exit
else
  cd "$1" || exit
fi

# Git initialization and standardization
git init
git add -A
git commit -m "build(repo): start" # First commit
git branch -m master main

if [ "$1" == "-st" ]; then
  ## If standard configuration, create hooks with husky
  npx husky install
  echo "module.exports = { extends: ['@commitlint/config-conventional'] }" >commitlint.config.js
  npx husky add .husky/commit-msg "npx --no-install commitlint --edit \$1"
fi

## If third parameter is given, connect remote repository and push
if [ -n "$3" ]; then
  git remote add origin "$3"
  git push origin main
elif [ "$(dirname "$0")" == "$(dirname "$(dirname "$0")")/$2" ]; then
  ## If in default configuration is given a remote repository
  git remote add origin "$2"
  git push origin main
elif [ "$1" == "-st" ]; then
  ## Create test branch for standard configuration
  git branch test
  git switch test
  if [ -n "$3" ]; then
    ### If in standard configuration is given a remote repository
    git push origin test
  fi
fi

echo "Git started"
