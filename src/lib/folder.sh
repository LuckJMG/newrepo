#!/usr/bin/env bash
# Create folders
echo "Creating folders..."

if [[ "$1" = -* ]]; then
  mkdir "$2"
  cd "$2" || exit
else
  mkdir "$1"
  cd "$1" || exit
fi

mkdir src

# Check other options
if [ "$1" == "-nd" ] || [ "$1" == "-st" ]; then
  mkdir node_modules
elif [ "$1" == "-wb" ]; then
  mkdir css js img
fi

echo "Folders created"
