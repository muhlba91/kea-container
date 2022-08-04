#!/bin/sh

while [[ ! -f "/var/log/kea/current" ]]; do
    sleep 1
done

exec tail -f /var/log/kea/current