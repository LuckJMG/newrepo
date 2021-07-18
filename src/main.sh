#!/usr/bin/env bash

ASSETS_PATH="$(dirname "$0")/assets" # Current dir

if [ -n "$1" ]; then
  # Command options
  case "$1" in
  "-st")
    "$ASSETS_PATH"/standard.sh "$2" "$3"
    ;;
  "-nd")
    "$ASSETS_PATH"/node.sh "$2" "$3"
    ;;
  "-wb")
    "$ASSETS_PATH"/web.sh "$2" "$3"
    ;;
  "-py")
    "$ASSETS_PATH"/python.sh "$2" "$3"
    ;;
  "-ml")
    "$ASSETS_PATH"/minimalist.sh "$2" "$3"
    ;;
  *)
    "$ASSETS_PATH"/default.sh "$1" "$2"
    ;;
  esac
else
  echo "Missing parameters"
fi
