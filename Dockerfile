FROM alpine:3.3

RUN sed -i "s/dl-4\.alpinelinux\.org/repos\.lax-noc\.com/g" /etc/apk/repositories \
    && apk add --update bash go make cmake git gcc libc-dev geoip-dev perl

VOLUME ["/source"]
