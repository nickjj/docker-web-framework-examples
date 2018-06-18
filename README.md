[![Build Status](https://travis-ci.com/nickjj/docker-web-framework-examples.svg?branch=master)](https://travis-ci.com/nickjj/docker-web-framework-examples)

# Example Apps That Demonstrate How to Use Docker with Your Favorite Web Frameworks

*But aren't there a million tutorials out there that do this already?*

Yes, but a lot of those tutorials are outdated and there's no quality control.
Some might be great, but others may contain questionable decisions. This repo
will attempt to stay on the bleeding edge for both Docker and web framework
versions, and since it's open source, we can all contribute our best practices
together.

## Goals

- **Be as minimal as possible** without compromising readability
- **Be as fast as possible for build times** without compromising readability
- **Deal with development and production app configuration** in a reasonable way
- **Remain updated** to take advantage of the latest and greatest Docker / app features

## Getting Started

Each framework and language has their own folder. As time goes on, more examples
will be added.

### 1. Do You Have Docker and Docker Compose Installed?

It's expected that you already have Docker and Docker Compose installed. If not,
head over to [Docker's website](https://docs.docker.com/install/) and install a
version of Docker for your operating system of choice.

### 2. Clone This Repo

```sh
git clone https://github.com/nickjj/docker-web-framework-examples
cd docker-web-framework-examples
```

**You'll find a `README.md` file in each folder with specific instructions and
notes for that framework / language**.

## Supported Frameworks / Languages

This list is ever growing, so if you don't see your web framework of choice,
open a PR.

- [Flask](https://github.com/nickjj/docker-web-framework-examples/tree/master/flask)
- [Node / Express](https://github.com/nickjj/docker-web-framework-examples/tree/master/node)
- [Phoenix](https://github.com/nickjj/docker-web-framework-examples/tree/master/phoenix)
- [Rails](https://github.com/nickjj/docker-web-framework-examples/tree/master/rails)
- [Webpack](https://github.com/nickjj/docker-web-framework-examples/tree/master/webpack)

## Contributing

Whether you're fixing a bug, improving an existing app or creating a new
example app, your efforts are very much appreciated! Check out the
[contributing documentation](https://github.com/nickjj/docker-web-framework-examples/blob/master/CONTRIBUTING.md).
