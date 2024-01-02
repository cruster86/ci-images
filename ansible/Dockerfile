FROM alpine:3.19

ARG BUILD_DATE
ARG ANSIBLE_VERSION
ARG ANSIBLE_LINT_VERSION

RUN apk add --update --no-cache \
       ca-certificates \
       git \
       openssh-client \
       openssl \
       python3\
       py3-pip \
       py3-cryptography \
       rsync \
       sshpass \
       py3-cffi

RUN apk add --update --virtual \
       .build-deps \
       python3-dev \
       libffi-dev \
       openssl-dev \
       build-base \
    && pip3 install --no-cache-dir --break-system-packages \
       ansible==${ANSIBLE_VERSION} \
       ansible-lint==${ANSIBLE_LINT_VERSION} \
       boto3 botocore \
    && apk del \
       .build-deps \
    && rm -rf /var/cache/apk/* \
    && find /usr/lib/ -name '__pycache__' -print0 | xargs -0 -n1 rm -rf \
    && find /usr/lib/ -name '*.pyc' -print0 | xargs -0 -n1 rm -rf

RUN mkdir -p /etc/ansible \
    && echo 'localhost' > /etc/ansible/hosts \
    && echo -e """\
\n\
Host *\n\
    StrictHostKeyChecking no\n\
    UserKnownHostsFile=/dev/null\n\
""" >> /etc/ssh/ssh_config

WORKDIR /ansible

CMD [ "sh" ]