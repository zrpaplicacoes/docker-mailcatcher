FROM ruby:alpine

EXPOSE 1080 1025

RUN apk update && \
    apk add --no-cache sqlite-dev libstdc++ && \
    apk add --no-cache --virtual .build-deps make g++ && \
    gem install mailcatcher --no-rdoc --no-ri && \
    apk del .build-deps

CMD mailcatcher --ip 0.0.0.0 --no-quit --foreground --verbose

