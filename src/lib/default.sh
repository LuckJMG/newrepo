#!/usr/bin/env bash

# Declare current path
CURRENT_PATH=$(dirname "$(dirname "$0")")

# Create folders
echo "Creating folders..."
mkdir "$1" # Root folder
cd "$1" || exit
mkdir src # Source folder
echo "Folders created"

# Export files
echo "Exporting files..."
cp -rT "$CURRENT_PATH"/assets/minimalist ./
cp -rT "$CURRENT_PATH"/assets/default ./
touch .gitignore
echo "Files exported"

# Start git
echo "Starting git..."
git init
git add -A
git commit -m "build(repo): start" # First commit
git branch -m master main

## Connect remote repository
if [ -n "$2" ]; then
  git remote add origin "$2"
  git push origin main
fi

echo "Git started"
echo "New repository completed"
