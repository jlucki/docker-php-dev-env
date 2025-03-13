# Docker PHP Development Environment

This repository allows you to quickly get a development environment up and running using Docker, including a MySQL database and some debugging tools.

This environment includes the latest versions of the following software:

- `nginx:alpine`
- `php:8.4-fpm`
- `mysql:latest`
- `xdebug`

## Prerequisites

- Docker - https://www.docker.com/products/docker-desktop
- Tested and confirmed working on:
  - macOS 14.6.1 (Sonoma)
  - Windows 10 Version 21H1 build 19043.1165

## Project Setup

Run `composer create-project jlucki/docker-php-dev-env "project_name"`

Alternatively, download the files from this repo and copy them to your project directory.

## Running the Container

1. Run `docker compose up -d` from the project directory
   - The above command will only work on versions newer than 3.6. If you are using Docker 3.6 or older, use `docker-compose up -d`
   - You can check running containers withg `docker ps`
2. Visit `localhost` in your browser

## Setting up Xdebug in Your IDE

_The following instructions are for PHPStorm._

1. Click on Run > Edit Configurations
2. Click the `+` and add a new PHP Remote Debug configuration
3. Give the configuration a name
4. Tick _Filter debug connection by IDE key_
5. Add `PHPSTORM` in the session id
6. Click the `...` next to Server
7. Click the `+` to add a new server
8. Give the server a name, and set the host to `localhost`
9. Tick _Use path mappings_
10. Under the `Project files` file/directory, next to your project folder, for the `Absolute path on the server` column add `/var/www/html`
11. Hit Apply and OK until you've returned to the IDE
12. Click the _Start Listening for PHP Debug Connections_ icon
13. Set a breakpoint in your code
14. Refresh the page in your browser
15. Accept _Incoming Connection From Xdebug_
16. Happy debugging!

See https://xdebug.org/docs/remote for how to enable xdebug sessions.

## Additional Notes

For database connections, use `mysql` as the hostname. If you would like a different hostname, change the service name in the `docker-compose.yml` file.

## Windows 10 Troubleshooting

For troubleshooting tips see the [wiki](https://github.com/jlucki/docker-php-dev-env/wiki/Windows-Troubleshooting/).
