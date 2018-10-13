# An Example Laravel + Docker Application

A working example that's filled with Docker best practices so you can use this as a guide for your Laravel application. Thanks to **Paul Redmond** from Laravel News fame for this [post](https://laravel-news.com/multi-stage-docker-builds-for-laravel).

## Defaults

**This example app is based off the latest Laravel 5.7 release.**

- Using PHP 7.2 and Apache as the base for environment
- Multi-stage build with Composer building backend dependencies while Yarn handles the frontend assets
- Artifacts from the previous stages are deployed to the application

## Modifications

You can switch the `php:7.2-apache` image in Dockerfile with your custom image that could use, for example, nginx and come with Yarn for development.

## Trying Out the App

Follow the [getting started](https://github.com/nickjj/docker-web-framework-examples#getting-started) section from the main `README.md` file and then:

```sh
cd laravel
docker-compose up -d
```

### Viewing the Example Web Page

Open <http://localhost:8000> in your browser and you should see a page containing _Hello World_ and your environment.

## Learn More about Docker with the Dive into Docker Course

This set up is ready to go but if you're new to Docker you may want to spend some time learning the Docker fundamentals so you fully understand how Docker works and how to expand on this example project.

**If you like learning by video, check out the Dive into Docker course at
[https://diveintodocker.com](https://diveintodocker.com??utm_source=github&utm_medium=docker-examples&utm_campaign=webpack)**.

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

Hey, I'm Nick Janetakis. I've been using Docker in production since 2014 and over the years I've helped boat loads of people apply Docker to their
apps while doing freelance work. Also, this course has helped thousands of people learn Docker.

I'm also part of the Docker Captains group (Docker reached out to me to join their team as a trusted content creator).
