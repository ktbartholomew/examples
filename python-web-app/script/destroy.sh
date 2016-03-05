#!/bin/bash

# Completely destory all networks, volumes, and containers associated with
# the Python web app

set -ueo pipefail

ROOT=$(cd $(dirname $0)/.. && pwd)

source ${ROOT}/script/include/constants.sh
source ${ROOT}/script/include/util.sh

if container_exists ${NGINX_CONFIG} ; then
  docker rm --force --volumes ${NGINX_CONFIG}
fi

if container_exists ${INTERLOCK} ; then
  docker rm --force --volumes ${INTERLOCK}
fi

if network_exists ${NETWORK} ; then
  docker network rm ${NETWORK}
fi

if image_exists ${INTERLOCK_IMAGE} ; then
  docker rmi ${INTERLOCK_IMAGE}
fi
