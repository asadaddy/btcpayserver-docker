#!/bin/bash

. /etc/profile.d/btcpay-env.sh

cd "`dirname $BTCPAY_ENV_FILE`"

docker-compose -f $BTCPAY_DOCKER_COMPOSE down -t "${COMPOSE_HTTP_TIMEOUT:-180}"
if ! [ $? -eq 0 ]; then
    docker-compose -f $BTCPAY_DOCKER_COMPOSE down
fi
