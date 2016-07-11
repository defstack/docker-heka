FROM alpine:3.4

RUN apk add --update bash go make cmake git gcc libc-dev geoip-dev perl

VOLUME ["/source"]
