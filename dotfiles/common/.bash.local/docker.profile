# aliases for various docker operations.

alias dockerwipe="docker ps -qa | xargs docker rm -fv"
alias dockerwipeimages="docker images -q | xargs docker rmi -f"
