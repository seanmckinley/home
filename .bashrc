# - Crap -
os_name=`uname`

# - Sources -
source ~/.git-prompt.sh

# - Exports -
export HISTCONTROL=ignoredups
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
export HISTCONTROL=erasedups

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
if [[ "$os_name" == 'Darwin' ]]; then
  export EDITOR=/usr/bin/vim
fi

# - Git Completion -
if [ -f ~/.scripts/git-completion.bash ]; then
  . ~/.scripts/git-completion.bash
fi

# - OS agnostic Aliases -
alias ls="ls -G"
alias ssh="ssh -A"

# - Ignore duplicated history events -

# - PS1 madness -
GIT_PS1_SHOWDIRTYSTATE=true
if [[ "$os_name" == 'Linux' ]]; then
  alias ls="ls --color=always"
  PS1="\n[\u@\h] [\e[01;38;05;075m\w\e[0m] \n[ \T ]\e[01;38;05;075m >\e[0m "
elif [[ "$os_name" == 'Darwin' ]]; then
  alias vim="/usr/local/Cellar/vim/8.0.0086/bin/vim"
  PS1='\n[\u \e[01;38;05;067m\w \e[0m] \n[ \T ] |\e[01;38;05;35;m$(__git_ps1)\e[0m\n -> '
  export PIP_REQUIRE_VIRTUALENV=true

  gpip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
  }
fi

# - RVM madness -
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

