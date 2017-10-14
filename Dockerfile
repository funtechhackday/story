FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs npm
RUN mkdir /storyapp
WORKDIR /storyapp
ADD Gemfile /storyapp/Gemfile
ADD Gemfile.lock /storyapp/Gemfile.lock
RUN bundle install
ADD . /storyapp