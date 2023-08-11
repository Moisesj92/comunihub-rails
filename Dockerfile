FROM ruby:3.0

RUN gem install bundler --version 2.4.18

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle check || bundle install

COPY . ./
