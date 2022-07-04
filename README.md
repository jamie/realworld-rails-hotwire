# ![RealWorld Example App](logo.png)

> ### [Ruby on Rails](https://rubyonrails.org/) codebase containing real world examples (CRUD, auth, advanced patterns, etc) that adheres to the [RealWorld](https://github.com/gothinkster/realworld) spec and API.


## NB: This project is still WIP

### [Demo](https://realworld-rails-with-hotwire.onrender.com)&nbsp;&nbsp;&nbsp;&nbsp;[RealWorld](https://github.com/gothinkster/realworld)

This codebase was created to demonstrate a fully fledged fullstack application built with **Ruby on Rails 7** including CRUD operations, authentication, routing, pagination, and more.

Unlike a typical RealWorld application with a pure frontend/backend separation connected via API, this application is implemented with **[Hotwire](https://hotwired.dev/)** for rich frontend interaction.

Additionally, the target here is as vanilla/batteries-included as possible, so we're using Minitest rather than the more popular RSpec, for example. I am bringing in non-functional dependencies however, for code quality & monitoring purposes.


# How it works

> TODO: Describe the general architecture of your app here

# Getting started

Production is deployed via `bin/render_build.sh`, but locally all you need is Ruby 3.1 (or see `.ruby-version`) and run:

    bundle install
    bundle exec rails db:migrate
    bundle exec rails db:seed
    bundle exec rails server


# Configuration

* Configuration

* Database creation

* Database initialization


# Tests

    bundle exec rails db:migrate:test
    bundle exec rails test
    bundle exec rails test:system


# Services

Currently there are no extra processes to run - should it be necessary to pull in ActiveJob it will just be an in-memory runner.

We are using the following services for application monitoring (performance, errors, etc), which all graciously have a free or free-for-opensource trial plan.

| Feature | Service |
|---|---|
| Error Tracking, Performance Monitoring | [<img height="60px" title="AppSignal" src="https://raw.githubusercontent.com/jamie/realworld-rails-hotwire/main/public/appsignal-logo.svg" />](https://appsignal.com/) |
| Error Tracking                         | [<img height="60px" title="HoneyBadger" src="https://raw.githubusercontent.com/jamie/realworld-rails-hotwire/main/public/honeybadger-logo.svg" />](https://honeybadger.io) |
| Error Tracking, Performance Monitoring | [<img height="60px" title="Scout APM" src="https://raw.githubusercontent.com/jamie/realworld-rails-hotwire/main/public/scoutapm-logo.png" />](https://ter.li/h8k29r) |
| Error Tracking, Performance Monitoring | [<img height="60px" title="Sentry" src="https://raw.githubusercontent.com/jamie/realworld-rails-hotwire/main/public/sentry-logo.png" />](https://sentry.io/) |
| Performance Monitoring | [Skylight.io](https://www.skylight.io/) |
| | TBD: [Datadog](https://www.datadoghq.com/) |

Continuous Integration services provided by:

| Service | Status |
|---|---|
| [Ruby CI](https://ruby.ci/) | ![minitest](https://ruby.ci/badges/a266a09c-6bf7-4c6c-b6b5-e786612e0052/minitest) ![rubocop](https://ruby.ci/badges/a266a09c-6bf7-4c6c-b6b5-e786612e0052/rubocop) ![bundler_audit](https://ruby.ci/badges/a266a09c-6bf7-4c6c-b6b5-e786612e0052/bundler_audit) |
| [CircleCI](https://circleci.com/) | [![CircleCI](https://circleci.com/gh/jamie/realworld-rails-hotwire/tree/main.svg?style=svg)](https://circleci.com/gh/jamie/realworld-rails-hotwire/tree/main) |
| [Semaphore](https://semaphoreci.com/) | [![Build Status](https://tracefunc.semaphoreci.com/badges/realworld-rails-hotwire/branches/master.svg?style=shields)](https://tracefunc.semaphoreci.com/projects/realworld-rails-hotwire) |
| [Buildkite](https://buildkite.com/) | [![Build status](https://badge.buildkite.com/e3de6a64dbb5ce425cd3eca032b5ad03bcabc81c890fb9404b.svg)](https://buildkite.com/tracefunc/realworld-rails-hotwire) [view pipeline](https://buildkite.com/tracefunc/realworld-rails-hotwire) |

TODO: Semaphore needs some junit output to report file info
TODO: CircleCI needs setup w/ headless chrome for system tests
