#!/usr/bin/env bash

#* Import files
# Declare current path
CURRENT_PATH=$(dirname "$(dirname "$0")")

echo "Importing files..."

# Check if is default configuration
if [[ "$1" = -* ]]; then
  cd "$2" || exit
else
  cd "$1" || exit
fi

# Base files
cp -rT "$CURRENT_PATH"/assets/minimalist ./

# Check other configurations
if [ "$1" != "-ml" ]; then
  # More base files
  cp -rT "$CURRENT_PATH"/assets/default ./

  case "$1" in
  "-st") # Standard
    cp -rT "$CURRENT_PATH"/assets/standard ./
    ;;
  "-nd") # Node
    cp -rT "$CURRENT_PATH"/assets/node ./
    ;;
  "-wb") # Web
    cp -rT "$CURRENT_PATH"/assets/web ./
    ;;
  "-py") # Python
    cp -rT "$CURRENT_PATH"/assets/python ./
    touch setup.py src/sample/__init__.py src/sample/core.py src/tests/test_core.py
    ;;
  *) # Default
    touch .gitignore
    ;;
  esac
fi

echo "Files imported"
