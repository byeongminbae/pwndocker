FROM amd64/ubuntu:16.04
LABEL MAINTAINER = "https://github.com/andrewbae"

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

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
    vim \
    net-tools \
    iputils-ping \
    libffi-dev \
    libssl-dev \
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
    libreadline-gplv2-dev \
    libncursesw5-dev \
    libsqlite3-dev \
    tk-dev \
    libgdbm-dev \
    libc6-dev \
    libbz2-dev \
    software-properties-common \
    lsb-release

RUN wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
RUN tar -xvf Python-3.9.0.tgz
WORKDIR Python-3.9.0

RUN ./configure
RUN make -j $(nproc)
RUN make install -j $(nproc)

RUN update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.9 1


RUN sed -i '1s/python/python3.9/' /usr/bin/lsb_release

RUN pip3 install \
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

RUN curl https://raw.githubusercontent.com/slimm609/checksec.sh/master/checksec > /usr/local/bin/checksec

RUN gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN echo "source /usr/local/rvm/scripts/rvm" >> /etc/profile

RUN /bin/bash -l -c "gem install one_gadget"


VOLUME ["/pwn"]
WORKDIR /pwn

CMD ["/bin/bash"]