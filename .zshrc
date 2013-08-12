# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="kphoen"
#ZSH_THEME="sgilbertson"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git textmate gem bundler)
#plugins=(git gem ruby rails vi-mode)
plugins=(git gem ruby rails)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim

# Show colors in `less`
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'

# Customize to your needs...
# export PATH=/usr/local/opt/ruby193/bin:/usr/local/bin:/usr/local/share/npm/bin:/usr/local/sbin:/Applications/Xcode.app/Contents/Developer/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$PATH

# Don't screw with tmux's window titles.
DISABLE_AUTO_TITLE=true

# Bindings.
# bindkey -M vicmd '?' history-incremental-search-backward

# Groovy
export GROOVY_HOME=/usr/local/Cellar/groovy/2.0.5/libexec

# Combat SBT "PermGen" out-of-memory errors.
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
# export SBT_OPTS='-XX:+CMSClassUnloadingEnabled'
# export SBT_OPTS='-XX:+CMSClassUnloadingEnabled -XX:PermSize=64M -XX:MaxPermSize=128M'
# export SBT_OPTS='-Xms512m -Xmx512m -XX:MaxPermSize=512m'  # So Play doesn't run out of memory.
# export SBT_OPTS='-Xmx512M -Xmx512m -Xmx1024M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=1024M'  # So Play doesn't run out of memory.

# export RUBY_BINDIR=`brew info ruby|grep /bin|tr -d ' '`
# export PATH=$RUBY_BINDIR:$PATH
export PATH="/usr/local/bin:/usr/local/share/npm/bin/:/bin:/usr/sbin:/sbin:/usr/bin"
export PATH=$(cd $(which gem)/..; pwd):$PATH  # Current homebrew ruby gem binary dir
export VIM_APP_DIR=/Applications

# For tmux-powerline
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

alias be="bundle exec"
alias gs="git status"
alias gc="git commit -m $1"
alias gcv="git commit --verbose"
alias ga="git add"
alias gd="git diff HEAD"
alias gl='git log --pretty=format:"%C(yellow)%h %Creset%s - %C(white)%an %C(white bold)%ar" --graph'
alias glh='git log --pretty=format:"%C(yellow)%h %Creset%s - %C(white)%an %C(white bold)%ar" --graph | head'
alias gll="glh"  # Convenience alias.
alias pgr="--verbose --clean --no-acl --no-owner -d $1 $2"
alias mvim="PATH=/usr/local/Cellar/ruby193/1.9.3-p392/bin/:/usr/local/bin:/usr/bin:$PATH /usr/local/bin/mvim"
alias sc="cd ~/code/sullivan_cotter"
alias dt="cd ~/Desktop"
function pr {
  echo "Pushing and opening a new pull request ... "
  BRANCH=`git rev-parse --abbrev-ref HEAD`
  git push origin $BRANCH && open https://github.com/`git config --global github.user`/`basename $(git remote show -n origin | grep Push | cut -d: -f2-)`/pull/new/$BRANCH
}

# For tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# For vi-mode, alter cursor to suit mode.
# function zle-line-init zle-keymap-select {
#   RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#   RPS2=$RPS1
#   zle reset-prompt
# }
# zle -N zle-line-init
# zle -N zle-keymap-select


# No delay when going back to normal mode in vi-mode.
# bindkey -v
# 10ms for key sequences
# KEYTIMEOUT=1

# Make things work inside Emacs.
if [[ -n ${INSIDE_EMACS} ]]; then
    # This shell runs inside an Emacs *shell*/*term* buffer.
    # prompt walters
    unsetopt zle
fi

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/seangilbertson/.gvm/bin/gvm-init.sh" ]] && source "/Users/seangilbertson/.gvm/bin/gvm-init.sh"
