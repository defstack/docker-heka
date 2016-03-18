#!/bin/bash

if [ ! -z "$ES" ]; then
    # Waits es.
    # http://www.catonmat.net/blog/tcp-port-scanner-in-bash/
    es_ready=0
    while [ "$es_ready" -eq 0 ]; do
        echo >/dev/tcp/${ES}/9200 &&
            es_ready=1 || es_ready=0
        if [ "$es_ready" -eq 1 ]; then
            echo "elasticsearch is ready."
        else
            echo "elasticsearch not ready..."
            sleep 2
        fi
    done
fi

/usr/bin/hekad
