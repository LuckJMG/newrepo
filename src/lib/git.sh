#!/usr/bin/env bash

#* Start git
echo "Starting git..."

# Check if is default configuration
if [[ "$1" = -* ]]; then
  cd "$2" || exit
else
  cd "$1" || exit
fi

# Git initialization
git init

if [ "$1" == "-st" ]; then
  ## If standard configuration, create hooks with husky
  npx husky install
  echo "module.exports = { extends: ['@commitlint/config-conventional'] }" >commitlint.config.js
  npx husky add .husky/commit-msg "npx --no-install commitlint --edit \$1"
fi

# First commit
git add -A
git commit -m "build(repo): start"
git branch -m master main

# If third parameter is given, connect remote repository and push
if [ -n "$3" ]; then
  git remote add origin "$3"
  git push origin main

  ## Create test branch for standard configuration
  if [ "$1" == "-st" ]; then
    git branch test
    git switch test

    ### If in standard configuration is given a remote repository
    if [ -n "$3" ]; then
      git push origin test
    fi
  fi
## If in default configuration is given a remote repository
elif [[ "$1" != -* ]] && [[ -n "$2" ]]; then
  git remote add origin "$2"
  git push origin main
fi

echo "Git started"
