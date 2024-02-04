#!/bin/sh
# $IMAGE_NAME var is injected into the build so the tag is correct.

docker build --build-arg CURL_VERSION=${CURL_VERSION:=7.64.1} \
             -t ${IMAGE_NAME:=registry.sirius.online/infra/images/ubuntu:23.10-curl} .