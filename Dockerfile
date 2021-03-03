FROM ubuntu:20.04
LABEL maintainer="Zach McDonough @MaleNurse"

SHELL ["/usr/bin/bash", "-c"]
WORKDIR /root
RUN apt update
RUN apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends tzdata
RUN apt install -y build-essential git wget sudo pkg-config curl dbus apt-utils cmake vim nano python3 python3-pip python3-setuptools libjemalloc-dev libboost-dev libboost-filesystem-dev libboost-system-dev libboost-regex-dev autoconf flex bison libssl-dev llvm-10
RUN ln -s /usr/bin/pip3 /usr/bin/pip
RUN ln -s /usr/bin/python3 /usr/bin/python


ENTRYPOINT [ "/usr/bin/bash", "-l", "-c"]
