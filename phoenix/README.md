# An Example Phoenix + Docker Application

A working example that's filled with Docker best practices so you can use this
as a guide for your Phoenix app.

## Defaults

**This example app is based off the latest Phoenix 1.4.x release.**

- `build_path` and `deps_path` are set to build to `/elixir` in `mix.esx`
- Various config options were defined in `.env`
- Database configuration is read in through ENV variables
- An example root page is available at `/` using a `page` controller
- A health check URL was added at `/healthy` using a `page` controller

*This example app was generated with the following command:*

`mix phx.new hello`

## Trying Out the App

Follow the [getting started](https://github.com/nickjj/docker-web-framework-examples#getting-started) section
from the main `README.md` file and then:

```sh
cd phoenix
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
[https://diveintodocker.com](https://diveintodocker.com?utm_source=github&utm_medium=docker-examples&utm_campaign=phoenix)**.

It will take you from *"what is Docker?"* to happily Dockerizing your own Phoenix
applications.

> Trying to learn Docker alone was a daunting task. I've been writing software
> for 30 years and while I do have some ops experience, I just couldn't wrap my
> head around Docker until I met Nick and completed his course. Thanks to this
> course, it didn't take long to build and run my own Rails app with Docker. Huzzah!
>
> *Scott J., Software Engineer*

### About the Dive into Docker Author

Hey, I'm Nick Janetakis. I've been using Docker in production since 2014 and
over the years I've helped boat loads of people apply Docker to their
apps while doing freelance work. Also, this course has helped thousands of people
learn Docker.

I'm also part of the Docker Captains group (Docker reached out to me to join
their team as a trusted content creator).
