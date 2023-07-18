FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y \
  git \
  clang-format 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
