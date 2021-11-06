FROM alpine:latest

LABEL MAINTAINER="i@dextercai.com"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk add curl \
    && echo "hosts: files dns" > /etc/nsswitch.conf

