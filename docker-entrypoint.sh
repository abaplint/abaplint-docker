#!/bin/sh
set -e

echo "node version:     $(node -v)"
echo "abaplint version: $(abaplint -v)"

exec "$@"
