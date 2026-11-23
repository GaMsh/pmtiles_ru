#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

git pull --ff-only
docker compose -f compose.yaml -f compose.prod.yaml up -d --build
