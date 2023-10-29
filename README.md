# pwndocker
This project is created for the purpose of participating in hacking CTFs and wargames.  

In particular, heap exploitation may not work in specific environments (e.g., due to protection techniques or libc version).  
Of course, you can set up the environment without using pwndocker, but...  

pwndocker provides various Ubuntu environments, making it easy to handle such cumbersome version switching.  

If you want to add any tools or come across any issues, please leave an issue.  

## Supported versions
* Ubuntu 16.04 - There is an issue with the GDB plugin(pwndbg, gef) not functioning correctly.
* Ubuntu 17.04 - There is an issue with the GDB plugin(pwndbg, gef) not functioning correctly.
* Ubuntu 18.04 - No known issues
* Ubuntu 19.04 - No known issues
* Ubuntu 20.04 - No known issues

## Getting started
### Prerequisites
This project requires Docker, Git, curl, Python3 to be installed for it to function
### Installation
To install, enter the following command.
```bash
$ curl -s https://raw.githubusercontent.com/andrewbae/pwndocker/main/setup.sh | bash /dev/stdin install
```
To uninstall, enter the following command.
```bash
$ curl -s https://raw.githubusercontent.com/andrewbae/pwndocker/main/setup.sh | bash /dev/stdin uninstall
```

### Usage
Before using it, you need to build the Docker images. It's recommended to build all the images.
```bash
$ pd build all
```
That's it! Once you've built all the images once, you don't need to build them anymore.  
To start or stop the container, use the 'run' or 'kill' commands, respectively.
```bash
$ pd run 16.04
$ pd run 17.04
$ pd kill 16.04
$ pd kill all
```

When the container is started, the host's `$HOME` directory is automatically mounted to the container's `/pwn` directory.

