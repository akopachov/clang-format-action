FROM alpine:latest

RUN apk add --no-cache clang-extra-tools

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
