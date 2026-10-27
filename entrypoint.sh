#!/bin/sh
set -e

yarn --pure-lockfile

exec "$@"