#!/usr/bin/env bash

config_path="$(dirname "$0")/config"  # Current dir

main () {
  # Required parameters comprobation
  if [ -z "$1" ] || [ -z "$2" ]
  then
    echo "Missing parameters"

  # newrepo options
  elif [ "$1" == "-d" ]
  then
    "$config_path"/default.sh "$2" "$3"

  elif [ "$1" == "-s" ]
  then
    "$config_path"/standard.sh "$2" "$3"

  elif [ "$1" == "-n" ]
  then
    "$config_path"/node.sh "$2" "$3"

  elif [ "$1" == "-w" ]
  then
    "$config_path"/web.sh "$2" "$3"

  elif [ "$1" == "-p" ]
  then
    "$config_path"/python.sh "$2" "$3"

  elif [ "$1" == "-m" ]
  then
    "$config_path"/minimalist.sh "$2"
  fi
}

main "$1" "$2" "$3"  # Execute newrepo
