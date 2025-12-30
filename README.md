# DDEV FrankenPHP Benchmark

This is a simplified copy of https://github.com/thecaliskan/laravel-benchmark to compare these setups:

- DDEV + PHP 8.4 + Laravel 12 + [ddev/ddev-frankenphp](https://github.com/ddev/ddev-frankenphp) add-on (generic webserver)
- DDEV + PHP 8.4 + Laravel 12 + apache webserver + php-fpm
- DDEV + PHP 8.4 + Laravel 12 + nginx webserver + php-fpm

## Usage

```
bash prepare.sh
bash test.sh # see test results from wrk
bash cleanup.sh
```
