FROM alpine:latest

MAINTAINER juhongxiaoshou@163.com

RUN apk add --no-cache mongodb

COPY mongod.conf /etc/mongod.conf

COPY entrypoint.sh entrypoint.sh

EXPOSE 27017

ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
