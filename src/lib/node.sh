#!/usr/bin/env bash

#* Start node.js
echo "Starting node..."

# Check if is default configuration
if [[ "$1" = -* ]]; then
  cd "$2" || exit
else
  cd "$1" || exit
fi

# Node basic configuration
npm init -y

if [ "$1" == "-st" ]; then
  ## If is standard configuration install required packages
  npm install --save-dev standard-version @commitlint/{config-conventional,cli} husky
  ## Add standard-version script to package.json
  node -e "let pkg=require('./package.json'); pkg.scripts.release='standard-version'; require('fs').writeFileSync('package.json', JSON.stringify(pkg, null, 2));"
fi

echo "Node started"
