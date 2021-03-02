FROM ruby:2.7.0-slim
ENV RAILS_ROOT=/usr/app/${APP_NAME}
ENV RAILS_ENV=${RAILS_ENV}
# Install essential Linux packages
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client libproj-dev nodejs less
RUN mkdir -p \$RAILS_ROOT/tmp/pids
WORKDIR \$RAILS_ROOT
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install bundler
RUN  bundle install
COPY . .
EXPOSE 3000