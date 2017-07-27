#!/usr/bin/env bash
# aliases for pacman

# search pacakges (pacsearch is already supplied though!)
# alias pacsearch="pacman -Ss"

# install package
alias pacinstall="sudo pacman -Syu"

# uninstall package
alias pacuninstall="sudo pacman -R"

# install updates on poweroff
alias poweroff="pacaur -Syu --noconfirm && /usr/bin/poweroff"

# autoremove
pacautoremove() {
  __pacout=$(pacaur -Qdtq)
  if [ "$?" != "0" ]; then
    return $?
  fi
  __packages=(${__pacout})
  pacaur -R "${__packages[@]}"
}
