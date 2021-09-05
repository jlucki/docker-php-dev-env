# Docker PHP Development Environment

This repository allows you to quickly get a development environment up and running using Docker, including a MySQL database and some debugging tools.

This environment includes the latest versions of the following software:

- `nginx:alpine`
- `php:8.0-fpm`
- `mysql:latest`
- `xdebug`

## Prerequisites

 - Docker (https://www.docker.com/products/docker-desktop)
 - Tested on macOS 10.15 (Catalina) and Windows 10 Version 10.0.18362

### Windows 10 Prerequisites

- In Docker settings, file sharing must be enabled for the **C:\\** folder
	- Located under the **Resources** section, then the **File Sharing** section as seen in [this image](https://i.imgur.com/maub2Wh.png).
- If you do not see this option, make sure you are using **Windows containers**
	- Right-click the Docker icon in the system tray and click **Switch to Windows containers** as seen in [this image](https://i.imgur.com/enYmIPH.png)
- You will also need to *uncheck* **Use the WSL 2 based engine** in the **General** section in order to see the **File Sharing** section under **Resources** as seen in [this image](https://i.imgur.com/GxQtCZg.png)

## Running the Container

1. Using composer: `composer create-project jlucki/docker-php-dev-env <project name>` or download the files from this repo and copy them to your project directory
3. Run `docker-compose up` from the project directory
4. Visit `localhost` in your browser

## Setting up Xdebug in Your IDE

_The following instructions are for PHPStorm._

1. Click on Run > Edit Configurations
2. Click the `+` and add a new PHP Remote Debug configuration
3. Give the configuration a name
4. Tick _Filter debug connection by IDE key_
5. Add `PHPSTORM` in the session id
6. Click the `...` next to Server
7. Click the `+` to add a new server
8. Give the server a name, and set the host to `127.0.0.1`
9. Tick _Use path mappings_
10. Open the Project files drop down
11. Find the public folder, and under Absolute path on the server add `/code/public`
12. Hit Apply and OK until you've returned to the IDE
13. Click the _Start Listening for PHP Debug Connections_ icon
14. Set a breakpoint in your code
15. Refresh the page in your browser
16. Accept _Incoming Connection From Xdebug_
17. Happy debugging!

See https://xdebug.org/docs/remote for how to enable xdebug sessions.

## Additional Notes

For database connections, use `mysql` as the hostname. If you would like a different hostname, change the service name in the `docker-compose.yml` file.
