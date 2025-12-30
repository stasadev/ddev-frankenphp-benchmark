#!/usr/bin/env bash

set -eu -o pipefail

projects=("laravel12-nginx-fpm" "laravel12-frankenphp" "laravel12-apache-fpm")

ddev delete -Oy "${projects[@]}"

rm -rf "${projects[@]}"
