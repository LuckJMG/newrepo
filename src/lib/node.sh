#!/usr/bin/env bash

# Start node
echo "Starting node..."

if [[ "$1" = -* ]]; then
  cd "$2" || exit
else
  cd "$1" || exit
fi

npm init -y

if [ "$1" == "-st" ]; then
  ## Install packages
  npm install --save-dev standard-version @commitlint/{config-conventional,cli} husky
  node -e "let pkg=require('./package.json'); pkg.scripts.release='standard-version'; require('fs').writeFileSync('package.json', JSON.stringify(pkg, null, 2));"
fi

echo "Node started"
