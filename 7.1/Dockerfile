FROM ubuntu:16.04

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install software-properties-common \
    && LANG=C.UTF-8 add-apt-repository ppa:ondrej/php \
    && DEBIAN_FRONTEND=noninteractive apt-get -y update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
            ca-certificates \
            git \
            make \
            php7.1-cli \
            php7.1-curl \
            php7.1-fpm \
            php7.1-intl \
            php7.1-ldap \
            php7.1-mbstring \
            php7.1-soap \
            php7.1-sqlite3 \
            php7.1-xml \
            php7.1-zip \
            php-xdebug \
            unzip \
            wget \
        && rm -rf /var/lib/apt/lists/*

COPY bin/* /usr/local/bin/

CMD ["php", "-a"]
