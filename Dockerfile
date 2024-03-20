ARG RUBY_VERSION="2.5"
FROM ruby:$RUBY_VERSION-alpine

ARG BUNDLER_VERSION="2.3"
RUN gem install bundler -v $BUNDLER_VERSION

RUN apk add --no-cache --update --upgrade  \
    git make gcc libc-dev

WORKDIR /app

COPY crawler_detect.gemspec ./
COPY Gemfile ./
COPY lib/crawler_detect/version.rb ./lib/crawler_detect/

RUN bundle install

COPY . .

CMD ["bundle", "exec", "rubocop"]
