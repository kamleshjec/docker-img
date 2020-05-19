FROM alpine:3.4

LABEL maintainer="kamsjec@gmail.com"

RUN apk update && apk add \
    curl \
    git \
    vim
