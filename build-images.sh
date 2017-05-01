#!/usr/bin/env bash

TAGS="7.0"

for tag in ${TAGS};
do
    docker build -t gitlab-ci-php:${tag} -t tjamps/gitlab-ci-php:${tag} -f ${tag}/Dockerfile .
    if [ $? -ne 0 ]; then
        exit 1
    fi
done

exit 0
