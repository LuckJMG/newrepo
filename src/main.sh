#!/usr/bin/env bash

CONFIG_PATH="$(dirname "$0")/config"  # Current dir

main () {
  if [ -n "$1" ]; then
    # Command options
    case "$1" in
      "-st")
        "$CONFIG_PATH"/standard.sh "$2" "$3"
      ;;
      "-nd")
        "$CONFIG_PATH"/node.sh "$2" "$3"
      ;;
      "-wb")
        "$CONFIG_PATH"/web.sh "$2" "$3"
      ;;
      "-py")
        "$CONFIG_PATH"/python.sh "$2" "$3"
      ;;
      "-ml")
        "$CONFIG_PATH"/minimalist.sh "$2" "$3"
      ;;
      *)
        "$CONFIG_PATH"/default.sh "$1" "$2"
      ;;
    esac
  else
    echo "Missing parameters"
  fi
}

main "$1" "$2" "$3"  # Execute newrepo
