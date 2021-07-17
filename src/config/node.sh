#!/usr/bin/env bash

# Comprobate first argument
if [ -n "$1" ]
then
  # Create folders
  echo "Creating folders..."
  mkdir "$1"
  cd "$1" || exit
  mkdir src
  mkdir node_modules
  echo "Folders ready"

  # Copy & paste files
  echo "Copying & pasting files..."
  cp -rT ~/repo/newrepo/src/files/minimalist ./
  cp -rT ~/repo/newrepo/src/files/default ./
  echo "Files ready"

  # Node start
  npm init -y

  # Git start
  echo "Starting git repo..."
  git init
  git add -A
  git commit -m "build(repo): start"
  git branch -m master main

  ## Connect to remote repositorie
  if [ -n "$2" ]
  then
    git remote add origin "$2"
    git push origin main
  fi

  echo "Git ready"
  echo "New repo completed"

else
  echo "Project name required"

fi
