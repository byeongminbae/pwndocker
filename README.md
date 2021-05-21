# pwnker

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fandrewbae%2Fpwnker&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)

The pwnker is providing a docker environment for pwners.

The goal of pwnker is to make it more convenient when I playing pwn such as participate in CTF or playing wargames. 
Especially, heap exploitation requires various environments because the exploit is not working depending on system environment such as protection techniques, libc versions, etc.

If you had to face any inconvenience or found some improvements for pwnker, Please leave me an issue.

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

