#!/bin/bash

if [[ -z "${MONEROD_USERNAME}" ]]; then
    /usr/sbin/monerod --config-file /etc/monero/monerod.conf --non-interactive
else
    /usr/sbin/monerod --config-file /etc/monero/monerod.conf --non-interactive --rpc-login "${MONEROD_USERNAME}:${MONEROD_PASSWORD}"
fi
