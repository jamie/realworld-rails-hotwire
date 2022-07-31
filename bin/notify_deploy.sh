#!/bin/bash

# Airbrake
curl \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{"environment":"'$RAILS_ENV'","username":"render","repository":"https://github.com/jamie/realworld-hotwire-with-rails","revision":"'$RENDER_GIT_COMMIT'"}' \
  https://api.airbrake.io/api/v4/projects/439210/deploys?key=$AIRBRAKE_PROJECT_KEY
