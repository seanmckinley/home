# - Crap -
os_name=`uname`

# - Sources -
source ~/.git-prompt.sh

# - Exports -
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
if [[ "$os_name" == 'Darwin' ]]; then
  export EDITOR=/usr/bin/vim
fi

# - Aliases -
alias ls="ls -G"
alias ssh="ssh -A"

# - Ignore duplicated history events -
export HISTCONTROL=ignoreboth
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# - PS1 madness -
GIT_PS1_SHOWDIRTYSTATE=true
if [[ "$os_name" == 'Linux' ]]; then
  alias ls="ls --color=always"
  PS1="\n[\u@\h] [\e[01;38;05;075m\w\e[0m] \n[ \T ]\e[01;38;05;075m >\e[0m "
elif [[ "$os_name" == 'Darwin' ]]; then
  PS1='\n[\u \e[01;38;05;067m\w \e[0m] \n[ \T ] |\e$(__git_ps1)\n -> '
fi

# - RVM madness -
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
