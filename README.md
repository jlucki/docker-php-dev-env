# Docker PHP Development Environment

This repository allows you to quickly get a development environment up and running using Docker, including a MySQL database and some debugging tools.

This environment includes:

- `nginx:alpine`
- `php:7.4.1-fpm`
- `mysql:latest`
- `xdebug-2.9.0`

## Prerequisites

 - Docker (https://www.docker.com/products/docker-desktop)

## Running the Container

1. Download the files from this repo and copy them to your project directory
2. Run `docker-compose up` from the project directory
3. Visit `localhost` in your browser

## Setting up Xdebug in Your IDE

_The following instructions are for PHPStorm._

1. Click on Run > Edit Configurations
2. Click the `+` and add a new PHP Remote Debug configuration
3. Tick _Filter debug connection by IDE key_
4. Give the configuration a name
5. Click the `...` next to Server
6. Click the `+` to add a new server
7. Give the server a name, and set the host to `127.0.0.1`
8. Hit Apply and OK until you've returned to the IDE
9. Click the _Start Listening for PHP Debug Connections_ icon
10. Set a breakpoint in your code
11. Refresh the page in your browser
12. Accept _Incoming Connection From Xdebug_

## Additional Notes

For database connections, use `mysql` as the hostname. If you would like a different hostname, change the service name in the `docker-compose.yml` file.  
