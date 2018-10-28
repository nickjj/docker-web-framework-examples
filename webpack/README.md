# An Example Webpack + Docker Application

A working example that's filled with Docker best practices so you can use this
as a guide for your Webpack set up.

## Defaults

**This example app is based off the latest Webpack 3.x release.**

- It's ready to go for SCSS and ES6 JavaScript
- Active loaders: `babel-loader`, `sass-loader`, `post-css-loader`, `file-loader`
- `css` files get written to their own separate bundle

## Trying Out the App

Follow the [getting started](https://github.com/nickjj/docker-web-framework-examples#getting-started) section
from the main `README.md` file and then:

```sh
cd webpack
docker-compose up --build
```

### Viewing the Example Web Page

Open up the `hello/index.html` file in your browser.

### Making Changes to Your Assets

Modify `assets/app/app.scss` or `assets/app/app.js` with your changes, and then
if you refresh the `hello/index.html` page in your browser you should see your
changes.

### Building Your Assets for Production

```sh
docker-compose run webpack yarn run build
```

This will produce optimized assets in the `public/` directory.

## Learn More about Docker with the Dive into Docker Course

This set up is ready to go but if you're new to Docker you may want to spend some
time learning the Docker fundamentals so you fully understand how Docker works
and how to expand on this example project.

**If you like learning by video, check out the Dive into Docker course at
[https://diveintodocker.com](https://diveintodocker.com?utm_source=github&utm_medium=docker-examples&utm_campaign=webpack)**.

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
over the years I've helped boat loads of people apply Docker to their
apps while doing freelance work. Also, this course has helped thousands of people
learn Docker.

I'm also part of the Docker Captains group (Docker reached out to me to join
their team as a trusted content creator).
