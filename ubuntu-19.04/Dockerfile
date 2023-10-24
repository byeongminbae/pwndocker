FROM amd64/ubuntu:19.04
LABEL MAINTAINER = "https://github.com/andrewbae"

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN sed -i 's/archive.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
RUN sed -i 's/security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

RUN dpkg --add-architecture i386
RUN apt-get update -y
RUN apt-get install -y \
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
    file \
    ruby

RUN /bin/bash -l -c "gem install one_gadget"

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "/tmp/get-pip.py"
RUN python3 /tmp/get-pip.py

RUN pip3 install --upgrade pip
RUN python3 -m pip install --upgrade --no-cache-dir \
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

RUN bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
RUN curl https://raw.githubusercontent.com/slimm609/checksec.sh/master/checksec > /usr/local/bin/checksec

VOLUME ["/pwn"]
WORKDIR /pwn

CMD ["/bin/bash"]