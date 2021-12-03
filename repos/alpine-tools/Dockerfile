FROM alpine:3.13.7
LABEL version="20211203"

RUN apk add --no-cache busybox-extras
RUN apk add --no-cache curl
RUN apk add --no-cache net-tools
RUN apk add --no-cache openssl
RUN apk add --no-cache tree

ENTRYPOINT ["/bin/sh", "-c", "sleep inf"]
