#!/bin/sh
# $IMAGE_NAME var is injected into the build so the tag is correct.

docker build --build-arg BUILD_DATE=`date -u +”%Y-%m-%dT%H:%M:%SZ”` \
             --build-arg ANSIBLE_VERSION=${ANSIBLE_VERSION:=7.0.0} \
             --build-arg ANSIBLE_LINT_VERSION=${ANSIBLE_LINT_VERSION:=6.22.1} \
             -t ${IMAGE_NAME:=registry.sirius.online/infra/deploy/docker-ansible:v7.1.0} .