#!/bin/bash

main () {
  if [ -z $1 ] || [ -z $2 ]
  then
    echo "Missing parameters"
  elif [ $1 == "-d" ]
  then
    ~/repo/newrepo/src/config/default.sh $2 $3
  elif [ $1 == "-s" ]
  then
    ~/repo/newrepo/src/config/standard.sh $2 $3
  elif [ $1 == "-n" ]
  then
    ~/repo/newrepo/src/config/node.sh $2 $3
  elif [ $1 == "-w" ]
  then
    ~/repo/newrepo/src/config/web.sh $2 $3
  elif [ $1 == "-p" ]
  then
    ~/repo/newrepo/src/config/python.sh $2 $3
  elif [ $1 == "-m" ]
  then
    ~/repo/newrepo/src/config/minimalist.sh $2
  fi
}

main $1 $2 $3
