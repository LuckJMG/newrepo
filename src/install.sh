#!/usr/bin/env bash

src_path=$(dirname "$0")  # Current dir

# Execute permisses
chmod +x "$src_path/main.sh"  # Main file
chmod +x -R "$src_path/config"  # Config files
