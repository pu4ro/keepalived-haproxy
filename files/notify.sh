#!/bin/bash

TYPE="$1"

case $TYPE in
    master)
        systemctl restart haproxy
        ;;
    backup)
        systemctl restart haproxy
        ;;
    fault)
        systemctl stop haproxy
        ;;
    *)
        echo "Usage: $0 {master|backup|fault}"
        exit 1
        ;;
esac
