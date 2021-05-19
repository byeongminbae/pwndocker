#!/bin/bash

PROJECT="pwnker"
AUTHOR="Andrew Bae"
GITHUB="github.com/andrewbae"
DESCRIPTION="A docker environment for pwners"

INSTALL_DIR="/usr/local/bin"
PWNKER_DIR="${INSTALL_DIR}/pwnker-dir"

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
	if  [ "${#}" != 1 ] || \
		([ "${1}" != "install" ] && [ "${1}" != "uninstall" ]); then
			log error "usage: ${0} [install] [uninstall]"
			exit
	fi
}

function main()
{
	log info "${YELLOW}${PROJECT} - ${DESCRIPTION}${NC}"
	log info "Author - ${GITHUB}\n"

	sanity_check $@

	if [ "${1}" == "install" ]; then
		{
			log info "mkdir ${PWNKER_DIR}"
			mkdir "${PWNKER_DIR}"
			
			log info "git clone https://github.com/andrewbae/pwnker ${PWNKER_DIR}"
			git clone https://github.com/andrewbae/pwnker ${PWNKER_DIR}

			log info "ln -s ${PWNKER_DIR}/pwnker ${INSTALL_DIR}/pwnker"
			ln -s ${PWNKER_DIR}/pwnker ${INSTALL_DIR}/pwnker
		} || {
			log error "Installation failed"
		}

	elif [ "${1}" == "uninstall" ]; then
		uninstall_list="${PWNKER_DIR} ${INSTALL_DIR}/pwnker"
		if [ ! -d "${PWNKER_DIR}" ] && [ ! -f "${INSTALL_DIR}/pwnker" ]; then
			log error "Cannot found \"${PWNKER_DIR}\" and \"${INSTALL_DIR}/pwnker\" please check out pwnker is installed correctly"
			exit
		fi
		if [ ! -d "${PWNKER_DIR}" ]; then
			log warning "Cannot found \"${PWNKER_DIR}\" please check out pwnker is installed correctly"
			uninstall_list="${INSTALL_DIR}/pwnker"		
		elif [ ! -f "${INSTALL_DIR}/pwnker" ]; then
			log warning "Cannot found \"${INSTALL_DIR}/pwnker\" please check out pwnker is installed correctly"
			uninstall_list="${PWNKER_DIR}"		
		fi
		{
			log info "rm -rf ${uninstall_list}"
			rm -rf ${uninstall_list}
		} || {
			log error "Uninstallation failed"
		}
	fi
}

main $@
