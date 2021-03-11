#!/bin/bash

$config_dir = ~/repo/newrepo/src/config

main () {
  if (( $1 == "-d" ))
  then
    $config_dir/default.sh $2 $3
  elif (( $1 == "-l" ))
  then
    $config_dir/luck.sh $2 $3
  fi
}

main $1 $2 $3
