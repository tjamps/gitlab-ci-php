#!/usr/bin/env bash

TAGS="7.0"

docker login
if [ $? -ne 0 ]; then
    exit 1
fi

for tag in ${TAGS};
do
    docker push tjamps/gitlab-ci-php:${tag}
    if [ $? -ne 0 ]; then
        exit 1
    fi
done

exit 0
