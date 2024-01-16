FROM docker:20.10.24-dind-alpine3.17

ARG KUBECTL_VERSION

RUN apk update && apk add --no-cache curl wget ca-certificates bash
RUN wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl 

VOLUME /var/lib/docker
EXPOSE 2375 2376

CMD []