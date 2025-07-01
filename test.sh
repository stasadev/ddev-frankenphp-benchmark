#!/usr/bin/env bash

set -eu -o pipefail

if ! command -v wrk >/dev/null 2>&1; then
    echo "wrk command not found (https://github.com/wg/wrk)"
    exit 1
fi

projects=("laravel12-generic-addon" "laravel12-generic-web" "laravel12-nginx-fpm")

for project in "${projects[@]}"; do
    echo "Testing $project..."
    pushd "$project" >/dev/null
    ddev poweroff >/dev/null && ddev start >/dev/null
    set -x
    curl -sfI https://$project.ddev.site
    wrk -t16 -c100 -d30s --latency "https://$project.ddev.site/api/health-check"
    wrk -t16 -c100 -d30s --latency "https://$project.ddev.site/api/static"
    wrk -t16 -c100 -d30s --latency "https://$project.ddev.site/api/http-request"
    set +x
    popd >/dev/null
done
