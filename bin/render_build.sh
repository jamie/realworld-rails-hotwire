#!/usr/bin/env bash
# exit on error
set -o errexit

mv production.key config/credentials/production.key
bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
bundle exec rake db:fixtures:load
