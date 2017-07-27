#!/usr/bin/env bash

# Pipe less through source-highlight.
export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R"
