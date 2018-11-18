#!/bin/bash

# Get current Git branch

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom Bash prompt

export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

# Enable colour output for `ls`

export CLICOLOR=1

# Aliases

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
