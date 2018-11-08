FROM elixir:1.7.4-alpine
LABEL maintainer="Nick Janetakis <nick.janetakis@gmail.com>"

RUN apk update && apk add inotify-tools postgresql-dev

WORKDIR /app

COPY mix* ./
RUN mix local.hex --force && mix local.rebar --force \
    && mix deps.get && mix deps.compile

COPY . .

EXPOSE 8000
HEALTHCHECK CMD wget -q -O /dev/null http://localhost:8000/healthy || exit 1

CMD ["mix", "phx.server"]
