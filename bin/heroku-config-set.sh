#!/usr/bin/env bash

set -euo pipefail

# You have to change repo name and slack token
git config remote.heroku.url || \
  git remote add heroku https://git.heroku.com/${KEYBOT_REPO_NAME}.git
heroku config:set HUBOT_HEROKU_KEEPALIVE_URL=$(heroku apps:info -s  | grep web-url | cut -d= -f2)
heroku config:set HUBOT_SLACK_TOKEN="xxxx-XXXXX-XXXXXXXXXX"

exit
