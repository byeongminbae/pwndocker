#!/bin/bash

PROJECT="pwnker"
AUTHOR="Andrew Bae"
GITHUB="github.com/andrewbae"
DESCRIPTION="A docker environment for pwners"

# Colors preferences
RED="\033[1;31m"
YELLOW="\033[1;33m"
GREEN="\033[1;32m"

NC="\033[0m" # no color

function log() # info, warning, error 
{
	case "$1" in
		info)
			echo -e "${NC}[${GREEN}INFO${NC}] $2"	
			;;
		warning)
			echo -e "${NC}[${YELLOW}WARNING${NC}] $2"	
			;;
		error)
			echo -e "${NC}[${RED}ERROR${NC}] $2"	
			;;
	esac
}

function sanity_check()
{
	if  [ "${#}" != 2 ] || \
		([ "${1}" != "run" ] && [ "${1}" != "build" ]) || \
		([ ! `echo "${2}" | grep -E "([0-9]{2}\.[0-9]{2})"` ] && [ "${2}" != "all" ]); then 
			log error "Usage: ${0} [run | build] [VERSION [16.04, 17.04, 18.04, 19.04, 20.04]]";
			exit
	fi
	if [ "${1}" == "run" ] && [ "${2}" == "all" ] ; then
		log error "Usage: ${0} asdasd[run | build] [VERSION [16.04, 17.04, 18.04, 19.04, 20.04]]";
		exit
	fi
}

function main()
{
	log info "${YELLOW}${PROJECT} - ${DESCRIPTION}${NC}"
	log info "Author - ${GITHUB}"

	sanity_check $@

	if [ "${1}" == "build" ]; then
		if [ "${2}" == "all" ]; then
			log error "To-Do"
			#docker build -t pwnker "./ubuntu-*"
			exit
		fi
		else 
			docker build -t pwnker-ubuntu-"{$2}" "./ubuntu-{$2}"
	fi
}

main $@
