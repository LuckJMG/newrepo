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
  cp -Tr ~/repo/new-repo/src/files ./
  echo "Files ready"

  # Node start
  echo "Installing node modules..."
  npm set init.scripts.release "standard-version"
  npm init -y

  # Commitlint
  npm install --save-dev @commitlint/{config-conventional,cli}
  echo "module.exports = { extends: ['@commitlint/config-conventional'] }" > commitlint.config.js

  # Husky
  npm install husky --save-dev

  # Standard version
  npm install standard-version --save-dev
  npm config delete init.scripts.release
  echo "Node modules ready"

  # Git start
  echo "Starting git repo..."
  git init

  ## Hooks
  npx husky install
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

newRepo
