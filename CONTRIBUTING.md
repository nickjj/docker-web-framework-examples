# Contributing to the Docker Web Framework Examples Repo

Woohoo, congrats on wanting to contribute! Your efforts will be much appreciated.

This page contains information about how you can modify an existing example app
or add a new application.

## Topics

- [Example Application Specifications](#example-application-specifications)

## Example Application Specifications

If possible, use the framework's binary to generate a new application and then
make the bare minimum changes to the app so it's compatible with Docker.

### Community Standards

We should try to stick with what the community prefers when it comes to the
example applications in each framework / language. This isn't a place to start
installing or configuring a bunch of optional things.

For example:

- The Rails app uses PostgreSQL because the community as a whole agrees that
PostgreSQL is an excellent choice.

- The Flask app doesn't use a database. PostgreSQL &amp; SQLAlchemy are great
libs, but they are by no means a Flask default.

### Docker Related Files

#### Dockerfile

- Use Alpine as a base image unless you can't due to technical reasons
- Pin versions to at least the minor version, example: `2.5-alpine` not `2-alpine`
- Feel free to include your own name in the `LABEL` when adding new apps
- Only include `ARG` and `ENV` instructions if you really need them
- Use `/app` to store your app's code and set it as the `WORKDIR` (if it makes sense)
- When installing packages, take advantage of Docker’s layer caching techniques
- If your app is a web service, `EXPOSE 8000` unless you have a strong reason not to
- Include a `wget` driven `HEALTHCHECK` (if it makes sense)
- Stick to the `[]` syntax when supplying your `CMD` instructions
[other examples](https://github.com/nickjj/docker-web-framework-examples/blob/master/rails/Dockerfile)
and copy that style

#### docker-compose.yml

- List your services in the order you expect them to start
- Alphabetize each service's properties
- Double quote all strings and use `{}` for empty hashes
- Pin versions to at least the minor version, example: `10.4-alpine` not `10-alpine`
- Use `.` instead of `$PWD` for when you need the current directory's path
- Prefer `build: "."` unless you need to use `args` or some other sub-property
- If your service is a web service, publish port `8000` unless it doesn't make sense to
- When in doubt, look at the
[other examples](https://github.com/nickjj/docker-web-framework-examples/blob/master/rails/docker-compose.yml)
and copy that style

#### .dockerignore

- Don't forget to create this file :D
- Don't forget to add the `.git` folder
- Don't forget to add any sensitive files such as `.env.production`
- When in doubt, look at the
[other examples](https://github.com/nickjj/docker-web-framework-examples/blob/master/rails/.dockerignore)
and copy that style

### Default URL Endpoints

You'll want to set up 2 route endpoints:

- `/` to return a response of "Hello world with ENV=$ENV"
- `/healthy` to return an empty response with a status code of 200

The `ENV=$ENV` would be whatever the web framework uses to determine if it's
running in development or production mode. For example with Rails that's
`RAILS_ENV=development` and with Node that would be `NODE_ENV=development`.

The idea here is, we're not focusing on the templating engine, but setting up
a URL to let us know what environment the app is running under. This is only
used to serve as an example. The user would certainly put in their own
custom `/` route later.

The `/healthy` URL aligns with the `HEALTHCHECK` in the `Dockerfile`. It's a
good idea for all applications to provide a health check URL. Not only for
Docker's internal checks, but for external tools to detect down time.

### Tests

A passing test would be that you're able to `docker-compose up --build -d` your
app and it will respond with a 200 to the `/` URL. In the case of things like
Webpack, a passing test would be outputting the proper asset files.

All tests are ran through Travis. You can
[view all of the tests here](https://github.com/nickjj/docker-web-framework-examples/blob/master/.travis.yml).
