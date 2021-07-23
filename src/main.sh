#!/usr/bin/env bash

#* New repository initialization
# Declare current lib path
LIB_PATH="$(dirname "$0")/lib"

echo "Starting new repository..."

# Check if first parameter is missing
if [ -n "$1" ]; then
  # Create required folders and files
  "$LIB_PATH"/folder.sh "$1" "$2"
  "$LIB_PATH"/file.sh "$1" "$2"

  # Check if requires node.js (Node and standard configuration)
  if [ "$1" == "-nd" ] || [ "$1" == "-st" ]; then
    "$LIB_PATH"/node.sh "$1" "$2"
  fi

  #* Git initialization always at last
  "$LIB_PATH"/git.sh "$1" "$2" "$3"

  echo "New repository started"
else # If first parameter is missing
  echo "New repository starting failed"
  echo "Missing first parameter"
  #TODO: Make code errors for missing name and option
  #TODO: Log feature here
fi

#TODO: Create a test
