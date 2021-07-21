#!/usr/bin/env bash

# Declare lib path
LIB_PATH="$(dirname "$0")/lib"

# Check first parameter
if [ -n "$1" ]; then
  "$LIB_PATH"/folder.sh "$1" "$2"
  "$LIB_PATH"/file.sh "$1" "$2"

  if [ "$1" == "-nd" ] || [ "$1" == "-st" ]; then
    "$LIB_PATH"/node.sh "$1" "$2"
  fi

  "$LIB_PATH"/git.sh "$1" "$2" "$3"
else # If missing
  echo "Missing parameters"
fi
