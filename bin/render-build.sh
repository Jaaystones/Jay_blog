#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
./bin/rails assets:precompile
./bin/rails assets:clean

# Run database migrations
rails db:migrate
