#!/usr/bin/env bash
# exit on error
set -o errexit

mv production.key config/credentials/production.key
bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
bundle exec rake db:fixtures:load

# Notify airbrake of deploy
curl \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{"environment":"'$RAILS_ENV'","username":"render","repository":"https://github.com/'$RENDER_GIT_REPO_SLUG'","revision":"'$RENDER_GIT_COMMIT'"}' \
  https://api.airbrake.io/api/v4/projects/439210/deploys?key=$AIRBRAKE_PROJECT_KEY
