#!/bin/bash

minimalist () {
  # Comprobate first argument
  if [ ! -z $1 ]
  then
    # Create folders
    echo "Creating folders..."
    mkdir $1
    cd $1
    mkdir src
    echo "Folders ready"

    # Copy & paste files
    echo "Copying & pasting files..."
    cp -rT ~/repo/newrepo/src/files/minimalist ./
    echo "Files ready"

    # Git start
    echo "Starting git repo..."
    git init
    git add -A
    git commit -m "chore(repo): start"
    git branch -m master main
    echo "Git ready"

    echo "New repo completed"

  else
    echo "Project name required"
  fi
}

minimalist $1
