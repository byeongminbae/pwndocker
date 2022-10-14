# pwnker
The pwnker is providing a docker environment for pwners.

The goal of pwnker is to make it more convenient when I playing pwn such as participate in CTF or playing wargames. 
Especially, heap exploitation requires various environments because the exploit is not working depending on system environment such as protection techniques, libc versions, etc.  

![ezgif com-gif-maker](https://user-images.githubusercontent.com/40394063/195825077-29eb5259-2084-4ca2-bf7d-a0cf1b7bca53.gif)

# Supported versions
* Ubuntu 16.04
* Ubuntu 17.04
* Ubuntu 18.04
* Ubuntu 19.04
* Ubuntu 20.04

# Getting started
## Prerequisites
Make sure you have installed the following prerequisites on your computer
* Docker 
* Git 
* cURL 

## Quick Install

To install the pwnker, run this from the command-line:

```shell
$ /bin/bash -c "$(curl https://raw.githubusercontent.com/andrewbae/pwnker/master/setup.sh) install"
```

To uninstall the pwnker, run this from the command-line:

```shell
$ /bin/bash -c "$(curl https://raw.githubusercontent.com/andrewbae/pwnker/master/setup.sh) uninstall"
```

## Usage
Build the image to use if you did not build that image before using pwnker.
It is recommended that you build all docker images.
```shell
$ pwnker build all
```

That's all! after build all docker images just once, you don't have to build them anymore.

You can run the ubuntu version you want.

Basically, when running a new container, the default path is following the user's present path.

```shell
$ pwnker run 16.04 # or any version you want
```

To kill corresponding container, run this from the command-line:

```shell
$ pwnker kill 16.04 # or any version you want
```

# Contribution

Report issues or open pull requests with improvements  
