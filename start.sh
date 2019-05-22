#!/bin/sh

POOL_IP=$(nslookup $POOL_ADDRESS 2>/dev/null \
              | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])' \
              | head -1)

if [ "$TLS" = "1" ]; then
    OPTION="-O"
else
    OPTION="-o"
fi

/home/somebody/xmr-stak  \
    -u "${USER:-${WALLET_ADDRESS}}" \
    -p "${PASSWORD}" \
    "$OPTION" "${POOL_IP}:${POOL_PORT}" \
    --currency "${CURRENCY}" \
    -i "${PORT}" \
    -r "${RIGID}"
