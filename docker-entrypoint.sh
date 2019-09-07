#!/bin/sh
set -e
set -x

node -v
abaplint -v

exec "$@"
