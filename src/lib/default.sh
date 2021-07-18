#!/usr/bin/env bash

CURRENT_PATH=$(dirname "$(dirname "$0")")

# Create folders
echo "Creating folders..."
mkdir "$1"
cd "$1" || exit
mkdir src
echo "Folders ready"

# Create files
echo "Creating files..."
cp -rT "$CURRENT_PATH"/lib/minimalist ./
cp -rT "$CURRENT_PATH"/lib/default ./
touch .gitignore
echo "Files ready"

# Git start
echo "Starting git repo..."
git init
git add -A
git commit -m "build(repo): start"
git branch -m master main

## Connect to remote repositorie
if [ -n "$2" ]; then
  git remote add origin "$2"
  git push origin main
fi

echo "Git ready"
echo "New repo completed"
