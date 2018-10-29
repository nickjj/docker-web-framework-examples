# An Example Laravel + Docker Application

A working example that's filled with Docker best practices so you can use this
as a guide for your Laravel app.

## Defaults

**This example app is based off the latest Laravel 5.7 release.**

- An example root page is available at `/` in `routes/web.php`
- A health check URL was added at `/healthy` in `routes/web.php`
- Webpack is running inside its own container polling for changes

_This example app was generated with the following commands:_

```bash
composer create-project --prefer-dist laravel/laravel laravel
```

## Trying Out the App

Follow the [getting started](https://github.com/nickjj/docker-web-framework-examples#getting-started) section
from the main `README.md` file and then:

```bash
cd laravel
docker-compose up --build -d
```

Once all containers have been started you can run the database migrations:

```bash
docker-compose exec web php artisan migrate
```

### Using Docker for Windows, Mac or Linux?

Check out `http://localhost:8000` in your browser.

### Using Docker Toolbox?

Check out `http://192.168.99.100:8000` in your browser, or whatever your Docker
Machine IP address is.

## Learn More about Docker with the Dive into Docker Course

This set up is ready to go but if you're new to Docker you may want to spend
some time learning the Docker fundamentals so you fully understand how Docker
works and how to expand on this example project.

**If you like learning by video, check out the Dive into Docker course at
[https://diveintodocker.com](https://diveintodocker.com?utm_source=github&utm_medium=docker-examples&utm_campaign=laravel)**.

It will take you from *"what is Docker?"* to happily Dockerizing your own
applications.

> The one thing I look for when learning new technologies is how they work under
> the hood. The step by step instructions going from the bottom to the top while
> giving me a full overview of the stack gave this course that little extra I've
> missed in courses from other Docker instructors.
>
> I have been through very few learning experiences that were this thorough.
>
> *Dennis E., Freelance Developer*

### About the Dive into Docker Author

Hey, I'm Nick Janetakis. I've been using Docker in production since 2014 and
over the years I've helped boat loads of people apply Docker to their apps
while doing freelance work. Also, this course has helped thousands of people
learn Docker.

I'm also part of the Docker Captains group (Docker reached out to me to join
their team as a trusted content creator).