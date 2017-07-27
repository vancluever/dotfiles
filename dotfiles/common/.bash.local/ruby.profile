#!/usr/bin/env bash
#
# Ruby profile items, namely for the loading of gem binary directories
# into $PATH via loading the current local gem paths.
IFS=":" read -ra paths <<< "$(gem environment gempaths)"

for path in "${paths[@]}"; do
  export PATH=${path}/bin:$PATH
done

# Bundler alias.
alias buinstall="bundle install --binstubs --path vendor/bundle"
