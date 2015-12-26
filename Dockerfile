FROM alpine:3.3

RUN apk add --update bash go make cmake git gcc libc-dev geoip-dev

VOLUME ["/source"]
