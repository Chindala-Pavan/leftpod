FROM ruby:2.5.1-alpine
ARG RAILS_ENV=production
RUN apk update
RUN apk add bash build-base libxml2-dev libxslt-dev postgresql postgresql-dev nodejs vim yarn libc6-compat curl git
RUN mkdir /blog
WORKDIR /blog
COPY Gemfile* ./
RUN gem install bundler
RUN bundle install
COPY . .
EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000"]