FROM docker:24.0.7-dind-alpine3.19

ARG KUBECTL_VERSION

RUN apk update && apk add --no-cache curl wget
RUN wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl 

VOLUME /var/lib/docker
EXPOSE 2375 2376

CMD []