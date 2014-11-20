os_name=`uname`

if [[ "$os_name" == 'Linux' ]]; then
  PS1="\n[\u@\h] [\e[01;38;05;172m\w\e[0m] \n[ \T ]\e[01;38;05;172m >\e[0m "
elif [[ "$os_name" == 'Darwin' ]]; then
  PS1="\n[\u@\h] [\e[01;38;05;172m\w\e[0m] \n[ \T ]\e[01;38;05;172m >\e[0m "
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*