FROM ubuntu

RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get -q -y install ruby ruby-dev build-essential libpq-dev

ENV RAILS_ENV="production" \
    SECRET_KEY_BASE="$(openssl rand -base64 32)" \
    DEVISE_SECRET_KEY="a4298181ea5c7fd2b733dfb1d3407578ade5c5d3009702a5a8c4967d22e930c281d9c3ccd99f3eb8fb20e74ddebe202ce9e9cb86b12898f4d17dd18423489437"

RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc \
    && gem install bundler
RUN mkdir -p /app
WORKDIR /app
COPY Gemfile* /app/
RUN bundle install --without development test --jobs 4
COPY . /app/
RUN bundle exec rake assets:precompile

EXPOSE 3000