#!/usr/bin/env bash

check_cpu_load() {
    local load_avg
    load_avg=$(awk '{print $1}' /proc/loadavg)

    log_info "Current load average (1 min): $load_avg"

    if (( $(echo "$load_avg > $CPU_LOAD_THRESHOLD" | bc -l) )); then
        log_warn "CPU load is above threshold ($CPU_LOAD_THRESHOLD)"
        return 1
    fi

    return 0
}