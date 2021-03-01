FROM ubuntu:20.04
LABEL maintainer="Zach McDonough @MaleNurse"

RUN apt update
RUN apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends tzdata
RUN apt install -y build-essential sudo curl dbus apt-utils cmake vim nano python3 python3-pip python3-setuptools

WORKDIR /root

ENTRYPOINT [ "/bin/bash"]
