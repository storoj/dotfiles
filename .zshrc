PS1="%1~ %# "
export CLICOLOR=1
export PATH=$PATH:~/bin:~/homebrew/bin

if command -v nvim; then
  export EDITOR=nvim
else
  export EDITOR=vim
fi

autoload -Uz compinit && compinit
