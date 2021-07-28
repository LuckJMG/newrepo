#!/usr/bin/env bash

#* New repository creation
# Declare constants
LIB_PATH="$(dirname "$0")/lib"
OPTIONS=("--minimalist" "--standard" "--node" "--python" "--web")

function newrepo() {
  echo "Creating new repository..."

  # Create required folders and files
  "$LIB_PATH"/folder.sh "$1" "$2"
  "$LIB_PATH"/file.sh "$1" "$2"

  # Check if requires node.js (Node and standard options)
  if [ "$1" == "--node" ] || [ "$1" == "--standard" ]; then
    "$LIB_PATH"/node.sh "$1" "$2"
  fi

  #* Git initialization always at last
  "$LIB_PATH"/git.sh "$1" "$2" "$3"

  echo "New repository created"
}

# Check first parameter
if [ -n "$1" ]; then

  # Check if if first parameter is an option
  if [[ "$1" = -* ]]; then

    # Check if that option exist
    for option in "${OPTIONS[@]}"; do
      if [ "$1" == "$option" ]; then
        option_exist=true
      fi
    done

    if [ $option_exist ]; then

      # If exist check second parameter
      if [ -n "$2" ]; then
        newrepo "$1" "$2" "$3"

      else # If second parameter is missing
        echo "ERROR[1.0.2]: MISSING_PARAMETER"
        echo "The second parameter is missing"
      fi

    else # If the option not exist
      echo "ERROR[2.0.1]: WRONG_OPTION"
      echo "The option $1 doesn't exist"
    fi

  else # If not an option execute default
    newrepo "$1" "$2"
  fi

else # If first parameter is missing
  echo "ERROR[1.0.1]: MISSING_PARAMETER"
  echo "The first parameter is missing"
  #TODO: Log feature here
fi

#TODO: Create an automated test
