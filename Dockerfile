FROM ruby:2.7.1-alpine3.11
MAINTAINER Stefan Berger @stefanberger

RUN apk update && apk add nodejs build-base libxml2-dev libxslt-dev
RUN gem update && gem install --no-document bundler jekyll

EXPOSE 4000

WORKDIR /app