#!/bin/bash

newRepo () {
  # Create folders
  echo "Creating folders..."
  mkdir $1
  cd $1
  mkdir src
  mkdir node_modules
  echo "Folders ready"

  # Copy & paste files
  echo "Copying & pasting files..."
  cp -rT ~/repo/new-repo/src/files ./
  echo "Files ready"

  # Node modules install
  echo "Installing node modules..."
  npm init -y
  npm install --save-dev standard-version @commitlint/{config-conventional,cli} husky
  node -e "let pkg=require('./package.json'); pkg.scripts.release='standard-version'; require('fs').writeFileSync('package.json', JSON.stringify(pkg, null, 2));"
  echo "Node modules ready"

  # Git start
  echo "Starting git repo..."
  git init

  ## Hooks
  npx husky install
  echo "module.exports = { extends: ['@commitlint/config-conventional'] }" > commitlint.config.js
  npx husky add .husky/commit-msg "npx --no-install commitlint --edit \$1"

  git add -A
  git commit -m "build(repo): start"
  git branch -m master main
  git branch test
  git remote add origin $2
  git push origin main
  echo "Git ready"
  echo "New repo completed"
}

newRepo $1 $2
