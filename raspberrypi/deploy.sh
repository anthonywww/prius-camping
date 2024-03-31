#!/usr/bin/env bash

SSH_KEY_PATH="~/.ssh/dolores-dash.key"
SSH_SCRIPT="deploy.sh"

COLOR_RESET="$(tput sgr0)"
COLOR_BOLD="$(tput bold)"
COLOR_GREY="$(tput setaf 7)"
COLOR_RED="$(tput setaf 9)"
COLOR_YELLOW="$(tput setaf 11)"
COLOR_GREEN="$(tput setaf 10)"
COLOR_BLUE="$(tput setaf 12)"
COLOR_RESET="$(tput sgr0)"
ERROR_PREFIX="${COLOR_BOLD}${COLOR_RED}Error:${COLOR_RESET}"



# Functions

error() {
	echo -e "${ERROR_PREFIX} ${1}"
}

log_err() {
	if [ -n "$1" ]; then
		IN="$1"
	else
		read IN
	fi

	echo -e "(REMOTE) ${ERROR_PREFIX} ${1}${COLOR_RESET}"
}

log_msg() {
	if [ -n "$1" ]; then
		IN="$1"
	else
		read IN
	fi

	echo -e "(REMOTE) ${COLOR_BLUE}>${COLOR_RESET} ${COLOR_GREY}${1}${COLOR_RESET}"
}







# Main

if [ ! "$#" -eq "3" ]; then
	error "command and/or host parameter missing!"
	echo -e "Usage: $0 <cmd> <host>"
	exit 1
fi

case "$1" in
	"install")
		echo -e ""
	;;
	"update")
		echo -e ""
	;;
	*)
		echo -e "${ERROR} unknown command: $1"
		echo ""
		echo -e "Valid commands:"
		echo -e "  - ${COLOR_YELLOW}install${COLOR_RESET} = upload and install the project onto the <host> Raspberry Pi"
		echo -e "  - ${COLOR_YELLOW}update${COLOR_RESET} = only upload changed scripts"
		exit 1
	;;
esac


ssh -i "${SSH_KEY_PATH}" pi@dolores-dash.local << EOF
	set -x +i
	cd /
	

EOF 1>(log_msg)
