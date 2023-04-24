#!/bin/bash
set -e

yarn --pure-lockfile

exec "$@"