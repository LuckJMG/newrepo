#!/usr/bin/env bash

# Declare lib path
LIB_PATH="$(dirname "$0")/lib"

# Check first parameter
if [ -n "$1" ]; then
  # Command options
  case "$1" in
  "-st") # Standard
    "$LIB_PATH"/standard.sh "$2" "$3"
    ;;
  "-nd") # Node
    "$LIB_PATH"/node.sh "$2" "$3"
    ;;
  "-wb") # Web
    "$LIB_PATH"/web.sh "$2" "$3"
    ;;
  "-py") # Python
    "$LIB_PATH"/python.sh "$2" "$3"
    ;;
  "-ml") # Minimalist
    "$LIB_PATH"/minimalist.sh "$2" "$3"
    ;;
  *) # Default
    "$LIB_PATH"/default.sh "$1" "$2"
    ;;
  esac
else # If missing
  echo "Missing parameters"
fi
