#!/usr/bin/env bash

set -eu -o pipefail

projects=("laravel12-generic-addon" "laravel12-generic-web" "laravel12-nginx-fpm")

for project in "${projects[@]}"; do
    if [[ ! -d "$project" ]]; then
        cp -r laravel12 "$project"
    fi
    cp -r ".ddev-$project/" "$project/.ddev"
    ddev describe "$project" >/dev/null 2>&1 || (cd "$project" && ddev config --auto)
done
