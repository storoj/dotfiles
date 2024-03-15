PS1="%1~ %# "
export CLICOLOR=1
export PATH="$HOME/bin:$HOME/homebrew/bin:$PATH"

if command -v nvim; then
  export EDITOR=nvim
else
  export EDITOR=vim
fi

autoload -Uz compinit && compinit
