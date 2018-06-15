FROM elixir:1.6-alpine
LABEL maintainer="Nick Janetakis <nick.janetakis@gmail.com>"

RUN apk update && apk add curl inotify-tools postgresql-dev

WORKDIR /app

COPY mix* ./
RUN mix local.hex --force && mix local.rebar --force \
    && mix deps.get && mix deps.compile && cp mix.lock /elixir

COPY . .

EXPOSE 8000
HEALTHCHECK CMD curl -f http://localhost:8000/healthy || exit 1

RUN chmod +x docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]

CMD ["mix", "phx.server"]
