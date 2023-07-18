FROM ubuntu:20.04

RUN apt-get update

RUN apt-get -y install git clang-format

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
