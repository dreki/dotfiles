################ PERSONAL CUSTOMIZATIONS ################

export PATH="/usr/local/Cellar/ruby193/1.9.3-p392/bin:/usr/local/opt/ruby/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:$PATH"
alias be="bundle exec"
alias ls="ls -h --color"
alias ll="ls -lv --group-directories-first"
alias tree="tree -Csuh"
alias gs="git status"

################ PROMPT SETUP ################

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

function proml {
    local        BLUE="\[\033[0;34m\]"

    # OPTIONAL - if you want to use any of these other colors:
    local         RED="\[\033[0;31m\]"
    local   LIGHT_RED="\[\033[1;31m\]"
    local       GREEN="\[\033[0;32m\]"
    local LIGHT_GREEN="\[\033[1;32m\]"
    local       WHITE="\[\033[1;37m\]"
    local  LIGHT_GRAY="\[\033[0;37m\]"
    # END OPTIONAL

    local     DEFAULT="\[\033[0m\]"
    PS1="\h:\W \u$BLUE\$(parse_git_branch) $DEFAULT\$ "
}

proml

################ EMACS SETUP ################

if [[ -n ${INSIDE_EMACS} ]]; then
    export TERM=eterm-color

    # This is usually the default apparently, but set it anyway.
    set -o emacs
fi
