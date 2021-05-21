FROM ubuntu:19.04
MAINTAINER Andrew Bae <andy@pwner.kr>

#RUN sed -i 's/archive.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
#RUN sed -i 's/security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

RUN dpkg --add-architecture i386 && \
	apt update -y && \
	apt install -y \
	libc6:i386 \
    libc6-dbg:i386 \
    libc6-dbg \
    lib32stdc++6 \
    g++-multilib \
	curl \
    cmake \
    ipython3 \
    vim \
    net-tools \
    iputils-ping \
    libffi-dev \
    libssl-dev \
	python3\
    python3-dev \
	python\
	python-dev\
    build-essential \
    tmux \
    strace \
    ltrace \
    nasm \
    wget \
    gdb \
    gdb-multiarch \
    netcat \
    socat \
    git \
    patchelf \
    file 

RUN curl https://bootstrap.pypa.io/pip/3.5/get-pip.py > /tmp/get-pip.py && python3 /tmp/get-pip.py
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py > /tmp/get-pip.py && python2 /tmp/get-pip.py

RUN pip3 install --upgrade pip && \
    python3 -m pip install --no-cache-dir \
    ropgadget \
    pwntools \
    z3-solver \
    smmap2 \
    apscheduler \
    ropper \
    unicorn \
    keystone-engine \
    capstone \
    angr \
    pebble \
    r2pipe	

RUN wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | bash

WORKDIR /root

CMD ["/sbin/my_init"]
