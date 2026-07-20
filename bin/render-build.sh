#!/usr/bin/env bash

# Exit immediately if any command fails.
set -o errexit

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean

# Prepare the production database during deployment.
bundle exec rails db:migrate
bundle exec rails db:seed
