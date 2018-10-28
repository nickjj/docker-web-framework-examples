# An Example Flask + Docker Application

A working example that's filled with Docker best practices so you can use this
as a guide for your Flask app.

## Defaults

**This example app is based off the latest Flask 1.0.x release.**

- Gunicorn is being used in both development and production and Flask is even
configured in such a way that the interactive debugger works with gunicorn
- `config/settings.py` would contain your general config settings
- `instance/settings.py` would have your git ignored production config settings
- An example root page is available at `/`
- A health check URL was added at `/healthy`

Looking for a more complete Flask application? Check out the
[Build a SAAS App with Flask course](https://buildasaasappwithflask.com?utm_source=github&utm_medium=docker-examples&utm_campaign=flask).

## Trying Out the App

Follow the [getting started](https://github.com/nickjj/docker-web-framework-examples#getting-started) section
from the main `README.md` file and then:

```sh
cd flask
docker-compose up --build
```

### Using Docker for Windows, Mac or Linux?

Check out `http://localhost:8000` in your browser.

### Using Docker Toolbox?

Check out `http://192.168.99.100:8000` in your browser, or whatever your Docker
Machine IP address is.

## Learn More about Docker with the Dive into Docker Course

This app is ready to go but if you're new to Docker you may want to spend some
time learning the Docker fundamentals so you fully understand how Docker works
and how to expand on this example project.

**If you like learning by video, check out the Dive into Docker course at
[https://diveintodocker.com](https://diveintodocker.com?utm_source=github&utm_medium=docker-examples&utm_campaign=flask)**.

It will take you from *"what is Docker?"* to happily Dockerizing your own Flask
applications.

> I have been working on a Flask project running on Docker for months and until
> now had very little knowledge of how things actually fit together in Docker.
> This course was flawless in explaining every segment in detail while keeping it
> easy to follow along and learn.
>
> *Brian. K, Web Developer*

### About the Dive into Docker Author

Hey, I'm Nick Janetakis. I've been using Docker in production since 2014 and
over the years I've helped boat loads of people apply Docker to their
apps while doing freelance work. Also, this course has helped thousands of people
learn Docker.

I'm also part of the Docker Captains group (Docker reached out to me to join
their team as a trusted content creator).
