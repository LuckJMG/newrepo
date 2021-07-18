#!/usr/bin/env bash

LIB_PATH="$(dirname "$0")/lib" # Current dir

if [ -n "$1" ]; then
  # Command options
  case "$1" in
  "-st")
    "$LIB_PATH"/standard.sh "$2" "$3"
    ;;
  "-nd")
    "$LIB_PATH"/node.sh "$2" "$3"
    ;;
  "-wb")
    "$LIB_PATH"/web.sh "$2" "$3"
    ;;
  "-py")
    "$LIB_PATH"/python.sh "$2" "$3"
    ;;
  "-ml")
    "$LIB_PATH"/minimalist.sh "$2" "$3"
    ;;
  *)
    "$LIB_PATH"/default.sh "$1" "$2"
    ;;
  esac
else
  echo "Missing parameters"
fi
