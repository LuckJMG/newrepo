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
  echo "Exporting files..."
  cp -rT "$CURRENT_PATH"/assets/minimalist ./
  cp -rT "$CURRENT_PATH"/assets/default ./
  cp -rT "$CURRENT_PATH"/assets/node ./
  echo "Files exported"

  # Start node
  echo "Starting node..."
  npm init -y
  echo "Node started"

  # Start git
  echo "Starting git..."
  git init
  git add -A
  git commit -m "build(repo): start" # First commit
  git branch -m master main

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
