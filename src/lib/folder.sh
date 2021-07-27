#!/usr/bin/env bash

#* Create folders
echo "Creating folders..."

# Check default option
if [[ "$1" = -* ]]; then
  # If any other option
  mkdir "$2"
  cd "$2" || exit
else # If default option
  mkdir "$1"
  cd "$1" || exit
fi

# Basic source folder for any option
mkdir src

# Web folders for web option
if [ "$1" == "--web" ]; then
  mkdir src/css src/js src/img
fi

echo "Folders created"
