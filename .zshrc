PS1="%1~ %# "
export CLICOLOR=1
export PATH="$HOME/bin:$HOME/homebrew/opt/java/bin:$HOME/homebrew/bin:$HOME/homebrew/sbin:$PATH"
export DERIVED_DATA="$HOME/Library/Developer/Xcode/DerivedData"

if command -v nvim > /dev/null; then
  export EDITOR=nvim
else
  export EDITOR=vim
fi

autoload -Uz compinit && compinit

HISTFILE=~/.zsh_history
INC_APPEND_HISTORY=1
