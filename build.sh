#!/usr/bin/env bash
set -e

cd /app

mix do deps.get, local.rebar --force, deps.compile
mix do ecto.drop, ecto.create, ecto.migrate
cd apps/block_scout_web/assets; npm install && node_modules/webpack/bin/webpack.js --mode development; cd -
cd apps/explorer && npm install; cd -
mix phx.digest
mix phx.server