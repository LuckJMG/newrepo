#!/usr/bin/env bash

CURRENT_PATH=$(dirname "$(dirname "$0")")

# Comprobate first argument
if [ -n "$1" ]; then
  # Create folders
  echo "Creating folders..."
  mkdir "$1"
  cd "$1" || exit
  mkdir src
  echo "Folders ready"

  # Create files
  echo "Creating files..."
  cp -rT "$CURRENT_PATH"/lib/minimalist ./
  echo "Files ready"

  # Git start
  echo "Starting git repo..."
  git init
  git add -A
  git commit -m "build(repo): start"
  git branch -m master main
  echo "Git ready"

  echo "New repo completed"

else
  echo "Project name required"
fi
