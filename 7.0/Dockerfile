FROM ubuntu:16.04

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
        ca-certificates \
        git \
        make \
        php7.0 \
        php7.0-cli \
        php7.0-curl \
        php7.0-intl \
        php7.0-ldap \
        php7.0-mbstring \
        php7.0-soap \
        php7.0-sqlite3 \
        php7.0-xml \
        php7.0-zip \
        php-xdebug \
        unzip \
        wget \
    && rm -rf /var/lib/apt/lists/*

COPY bin/* /usr/local/bin/

CMD ["php", "-a"]