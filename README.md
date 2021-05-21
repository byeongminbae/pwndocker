# pwnker

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fandrewbae%2Fpwnker&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)![badge](https://img.shields.io/badge/status-beta-orange)

The pwnker is providing a docker environment for pwners.

The goal of pwnker is to make it more convenient when I playing pwn such as participate in CTF or playing wargames. 
Especially, heap exploitation requires various environments because the exploit is not working depending on system environment such as protection techniques, libc versions, etc.

If you had to face any inconvenience or found some improvements for pwnker, Please leave me an issue.

## Supported versions

* Ubuntu 16.04 - passed
* Ubuntu 17.04 - passed
* Ubuntu 18.04
* Ubuntu 19.04
* Ubuntu 20.04

## Prerequisites

Make sure you have installed the following prerequisites on your computer

* Docker 
* Git 
* cURL 

## Quick Install

To install the pwnker, run this from the command-line:

```bash
/bin/bash -c "$(curl https://raw.githubusercontent.com/andrewbae/pwnker/master/setup.sh) install"
```

To uninstall the pwnker, run this from the command-line:

```bash
/bin/bash -c "$(curl https://raw.githubusercontent.com/andrewbae/pwnker/master/setup.sh) uninstall"
```

## Usage

Build the image to use if you did not build that image before using pwnker.
It is recommended that you build all docker images.

```
pwnker build all
```

That's all! after build all docker images just once, you don't have to build them anymore.

You can run the ubuntu version you want.

Basically, the current user's home folder is mapped to `/root`

```
pwnker run 16.04 # or any version you want
```

To kill corresponding container, run this from the command-line:

```
pwnker kill 16.04 # or any version you want
```

