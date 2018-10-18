FROM ruby:2.5-alpine
LABEL maintainer="Nick Janetakis <nick.janetakis@gmail.com>"

RUN apk update && apk add build-base nodejs postgresql-dev

ARG RAILS_ENV=production
ENV RAILS_ENV="${RAILS_ENV}"

WORKDIR /app

COPY Gemfile* ./
RUN bundle install

COPY . .

EXPOSE 8000
HEALTHCHECK CMD wget -q -O /dev/null http://localhost:8000/healthy || exit 1

# Only precompile assets when not in development mode.
RUN if [ "${RAILS_ENV}" != "development" ]; then rails assets:precompile; fi

CMD ["puma", "-C", "config/puma.rb"]
