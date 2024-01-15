#!/bin/sh
# $IMAGE_NAME var is injected into the build so the tag is correct.

docker build --build-arg KUBECTL_VERSION=${KUBECTL_VERSION:=v1.21.2} \
             -t ${IMAGE_NAME:=registry.sirius.online/infra/images/ansible/dind-kubectl:v2.0.0} .