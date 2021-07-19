#!/usr/bin/env bash

# Declare current path
CURRENT_PATH=$(dirname "$(dirname "$0")")

# Check first argument
if [ -n "$1" ]; then
  # Create folders
  echo "Creating folders..."
  mkdir "$1"
  cd "$1" || exit
  mkdir src node_modules
  echo "Folders created"

  # Export files
  echo "Export files..."
  cp -rT "$CURRENT_PATH"/assets/minimalist ./
  cp -rT "$CURRENT_PATH"/assets/default ./
  cp -rT "$CURRENT_PATH"/assets/standard ./
  echo "Files exported"

  # Start node
  echo "Starting node..."
  npm init -y

  ## Install packages
  npm install --save-dev standard-version @commitlint/{config-conventional,cli} husky
  node -e "let pkg=require('./package.json'); pkg.scripts.release='standard-version'; require('fs').writeFileSync('package.json', JSON.stringify(pkg, null, 2));"
  echo "Node started"

  # Start git
  echo "Starting git..."
  git init

  ## Create hooks
  npx husky install
  echo "module.exports = { extends: ['@commitlint/config-conventional'] }" >commitlint.config.js
  npx husky add .husky/commit-msg "npx --no-install commitlint --edit \$1"

  git add -A
  git commit -m "build(repo): start" # First commit
  git branch -m master main
  git branch test

  ## Connect to remote repository
  if [ -n "$2" ]; then
    git remote add origin "$2"
    git push origin main
  fi

  echo "Git started"
  echo "New repository completed"
else
  echo "Repository name required"
fi
