#!/bin/bash

default () {
  # Comprobate first argument
  if [ ! -z $1 ]
  then
    # Create folders
    echo "Creating folders..."
    mkdir $1
    cd $1
    mkdir css js img
    echo "Folders ready"

    # Copy & paste files
    echo "Copying & pasting files..."
    cp -rT ~/repo/newrepo/src/files/web ./
    echo "Files ready"

    # Git start
    echo "Starting git repo..."
    git init
    git add -A
    git commit -m "chore(repo): start"
    git branch -m master main

    ## Connect to remote repositorie
    if [ ! -z $2 ]
    then
      git remote add origin $2
      git push origin main
    fi

    echo "Git ready"
    echo "New repo completed"

  else
    echo "Project name required"

  fi
}

default $1 $2
