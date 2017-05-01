# gitlab-ci-php

> A docker image designed to be used with Gitlab CI when dealing with PHP projects.

This image is based on Ubuntu 16.04, rather than the usual standard PHP image, which I do not like 
(mainly because it builds required extensions every time which takes a significant amount of time
:clock1: :clock2: :clock3: :clock4: :clock5: :clock6: :clock7: :sleeping:).

## Table of contents

- [`.gitlab-ci.yml` example](#gitlab-ciyml-example)
- [Installed packages](#installed-packages)
- [Shipped commands](#shipped-commands)
- [Enable/Disable PHP modules](#enabledisable-php-modules)
- [Useful links](#useful-links)

## `.gitlab-ci.yml` example

```yaml
before_script:
    - set-php-timezone Europe/Paris

test:7.0:
    image: tjamps/gitlab-ci-php:7.0
    script:
        - install-composer
        - install-phpunit
        - ... # Add more commands
```

## Installed packages

The following packages are installed :

- `php7.0`
- `php7.0-cli`
- `php7.0-curl`
- `php7.0-intl`
- `php7.0-ldap`
- `php7.0-mbstring`
- `php7.0-soap`
- `php7.0-sqlite3`
- `php7.0-xml`
- `php7.0-zip`
- `php-xdebug`

A few convenience packages are installed too :

- `ca-certificates`
- `git`
- `make`
- `unzip`
- `wget`

## Shipped commands

The container ships a few commands to help you build and work with the image :

- [`set-php-timezone`](#set-php-timezone)
- [`install-composer`](#install-composer)
- [`install-phpunit`](#install-phpunit)

### `set-php-timezone`

Usage : 
```bash
$ set-php-timezone Europe/Paris
```

The list of all available timezones is available [here](http://php.net/manual/en/timezones.php)

### `install-composer`

Usage : 
```bash
$ install-composer
```

This command will always install the latest composer version available.

### `install-phpunit`

Usage : 
```bash
$ install-phpunit [VERSION]
```
You can specify an optional version to install. If you do not specify any version, the command installs phpunit v6.1.

## Enable/Disable PHP modules

You can easily enable/disable PHP modules with the following commands : 

- `phpenmod [MODULE]` : enable a PHP module, e.g. `$ phpenmod xdebug` would enable the Xdebug module
- `phpdismod [MODULE]` : enable a PHP module, e.g. `$ phpdismod xdebug` would disable the Xdebug module

## Useful links

- Gitlab Ci : [link](https://about.gitlab.com/features/gitlab-ci-cd/)
- Testing PHP projects with Gitlab CI : [link](https://docs.gitlab.com/ce/ci/examples/php.html)
- Docker image on Docker Hub : [link](https://hub.docker.com/r/tjamps/gitlab-ci-php/)

