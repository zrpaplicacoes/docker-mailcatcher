FROM ruby:alpine

EXPOSE 1080 1025

RUN apk update && \
    apk add --no-cache sqlite-dev make g++ && \
    gem install mailcatcher --no-rdoc --no-ri

CMD mailcatcher --ip 0.0.0.0 --no-quit --foreground --verbose

