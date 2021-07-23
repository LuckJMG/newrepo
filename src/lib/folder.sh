#!/usr/bin/env bash

#* Create folders
echo "Creating folders..."

# Check if is default configuration
if [[ "$1" = -* ]]; then
  # If is any other configuration
  mkdir "$2"
  cd "$2" || exit
else # If is default configuration
  mkdir "$1"
  cd "$1" || exit
fi

#Basic source folder for any option
mkdir src

# Check if is required other folders
if [ "$1" == "-nd" ] || [ "$1" == "-st" ]; then
  # Node folder for node and standard configuration
  mkdir node_modules
elif [ "$1" == "-wb" ]; then
  # Web folders for web configuration
  mkdir src/css src/js src/img
fi

echo "Folders created"
