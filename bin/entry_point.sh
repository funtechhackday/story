#!/bin/sh
set -e

if [ -f /storyapp/tmp/pids/server.pid ]; then
    rm /storyapp/tmp/pids/server.pid
fi

bundle exec rails db:migrate

exec bundle exec "$@"