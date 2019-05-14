#!/usr/bin/env bash

REGISTRY=image.overlay2.lsn.im

action=$1
branch=$(git rev-parse --abbrev-ref HEAD)
deploy_dir="dev"
 
if [[ ${action} == "deploy" ]]; then
    echo "deploy"
fi

if [[ ${action} == "build" ]]; then
    echo "build ${REGISTRY}"
fi
