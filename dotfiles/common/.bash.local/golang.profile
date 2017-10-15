#!/usr/bin/env bash
#
# golang profile, used to specify GOPATH and add the go bin
# directory to $PATH.
#
export GOPATH="${HOME}/go"
export PATH="${HOME}/go/bin:${PATH}"

# alias to switch to the $GOPATH quickly
alias gogo='cd ${HOME}/go'

# gogh goes to a github project path.
gogh() {
  local project="$1"
  cd "${GOPATH}/src/github.com/${project}" || return 1
}
