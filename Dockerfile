FROM ruby:3.2.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs  curl
WORKDIR /app
COPY Gemfile /app/Gemfile
RUN bundle install
ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo