#!/usr/bin/env bash

set -eu -o pipefail

projects=("laravel12-generic-addon" "laravel12-generic-web" "laravel12-nginx-fpm")

ddev delete -Oy "${projects[@]}"

rm -rf "${projects[@]}"
