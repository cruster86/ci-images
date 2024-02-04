FROM ubuntu:23.10

ENV DEBIAN_FRONTEND="noninteractive"

ARG CURL_VERSION

RUN apt update --fix-missing &&\
    apt install -y \
        wget binutils make build-essential libssl-dev &&\
    apt autoremove -y &&\
    apt autoclean -y &&\
    apt clean -y &&\
    wget -q --no-check-certificate https://curl.se/download/curl-${CURL_VERSION}.tar.gz && tar -xzf curl-${CURL_VERSION}.tar.gz &&\
    cd curl-${CURL_VERSION} &&\
       ./configure --with-openssl &&\
       make &&\
       make install &&\
    cd ../ && rm -rf curl-* &&\
    ldconfig &&\
    curl --version &&\
    apt purge -y \
        wget binutils make build-essential libssl-dev &&\
    apt autoremove -y &&\
    apt autoclean -y &&\
    apt clean -y &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /usr/share/doc/ &&\
    rm -rf /usr/share/man/

CMD ["/bin/bash"]