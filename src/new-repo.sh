#!/bin/bash

function new-repo(repo_name)
{
  # Create folders
  mkdir $repo_name/src
  mkdir $repo_name/node_modules

  # Copy files

  # Node start
  npm init -y

  # Git start
  git init
  git add -A
  git commit -m "build(repo): start"
  git mv master main
  git remote add origin $repo_url
  git push origin main
}
