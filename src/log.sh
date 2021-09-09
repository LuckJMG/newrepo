#!/usr/bin/env bash

LOG_FOLDER_PATH="$(dirname "$0")/logs"

function new_log () {
  LOG_FILE="$LOG_FOLDER_PATH/[$(date "+%Y\%m\%d")].log"
  touch "$LOG_FILE"
}

function log_warn() {
  echo "--[$(date "+%Y/%m/%d %H:%M:%S")] -- WARN -- $*" >> "${LOG_FILE}"
}

function log_info() {
  echo "--[$(date "+%Y/%m/%d %H:%M:%S")] -- INFO -- $*" >> "${LOG_FILE}"
}

function log_error() {
  echo "--[$(date "+%Y/%m/%d %H:%M:%S")] -- ERROR -- $*" >> "${LOG_FILE}"
  exit 1
}
