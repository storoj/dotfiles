PS1="%1~ %# "
export CLICOLOR=1
export EDITOR=nvim
export PATH=$PATH:~/bin

autoload -Uz compinit && compinit

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true

zstyle ':vcs_info:*' actionformats \
    '%u%c %F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f'
zstyle ':vcs_info:*' formats       \
    '%u%c %F{5}[%F{2}%b%F{5}]%f'

zstyle ':vcs_info:*' stagedstr '%F{2}s%f'
zstyle ':vcs_info:*' unstagedstr '%F{1}u%f'

vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
RPROMPT=$'$(vcs_info_wrapper)'
