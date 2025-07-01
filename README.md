# DDEV FrankenPHP Benchmark

This is a simplified copy of https://github.com/thecaliskan/laravel-benchmark to compare these setups:

- DDEV + PHP 8.4 + Laravel 12 + generic webserver + FrankenPHP inside `frankenphp` container (with `pdo_mysql` and `opcache` extensions)
- DDEV + PHP 8.4 + Laravel 12 + generic webserver + FrankenPHP inside the `web` container (static binary)
- DDEV + PHP 8.4 + Laravel 12 + nginx webserver + php-fpm

## Usage

```
bash prepare.sh
bash test.sh # see test results from wrk
bash cleanup.sh
```
