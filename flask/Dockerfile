FROM python:2.7-alpine
LABEL maintainer="Nick Janetakis <nick.janetakis@gmail.com>"

# If you plan to use PostgreSQL then you must add this package: postgresql-dev.
RUN apk update && apk add build-base

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000
HEALTHCHECK CMD wget -q -O /dev/null http://localhost:8000/healthy || exit 1

CMD ["gunicorn", "-c", "python:config.gunicorn", "hello.app:create_app()"]
