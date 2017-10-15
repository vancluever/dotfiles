#!/usr/bin/env bash
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
if [ -n "${ASCIINEMA_REC}" ]; then
  PS1='[\[\e[31m\]•REC\[\e[0m\] \W]\$ '
else
  PS1='[\u@\h \W]\$ '
fi

# load local bin if available
if [ -d "${HOME}/bin" ] && [ "$(echo "${PATH}" | grep -q "${HOME}"/bin ; echo $?)" == "1" ]; then
	export PATH="${HOME}/bin:${PATH}"
fi

# load local aliases, functions, and profiles
# shellcheck disable=SC1090
for include_file in ${HOME}/.bash.local/*.profile; do
	source "${include_file}"
done
