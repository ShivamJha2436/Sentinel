#!/usr/bin/env bash

log_info() {
    printf "[%s] [INFO]  %s\n" "$(date '+%Y-%m-%d %H:%M:%S')" "$1"
}

log_warn() {
    printf "[%s] [WARN]  %s\n" "$(date '+%Y-%m-%d %H:%M:%S')" "$1"
}

log_error() {
    printf "[%s] [ERROR] %s\n" "$(date '+%Y-%m-%d %H:%M:%S')" "$1" >&2
}