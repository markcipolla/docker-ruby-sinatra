ENV RUBY_ENV 2.7
FROM ruby:RUBY_ENV

LABEL maintainer="mark@markcipolla.com"

ENV RACK_ENV production
ENV MAIN_APP_FILE web.rb

RUN mkdir -p /usr/src/app

ADD startup.sh /

WORKDIR /usr/src/app

EXPOSE 80

CMD ["/bin/bash", "/startup.sh"]
