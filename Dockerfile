FROM alpine:latest

RUN apk add --no-cache clang-extra-tools python3 git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
