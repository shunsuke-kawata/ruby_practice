FROM ruby:3.2.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN curl https://intoli.com/install-google-chrome.sh
WORKDIR /tmp/work
COPY ./* /tmp/work/
RUN bundle install