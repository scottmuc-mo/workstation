# exports
#   HOMEBREW_CELLAR
#   HOMEBREW_PREFIX
#   HOMEBREW_REPOSITORY
# updates
#   PATH
#   MANPATH
#   INFOPATH
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# need this set to xterm-256color to get proper color support in vim
export TERM='xterm-256color'

# I want colorized ls by default
export LSCOLORS="GxFxCxDxBxEgEdabagacad"
alias ls='ls -G'
alias opauth='eval $(op signin)'

export GREP_OPTIONS="--color"

# Explictly use emacs key bindsings (needed in tmux for some reason)
# See: https://askubuntu.com/a/1158506
bindkey -e

# Erase duplicates in history, keep 10k entris, and append to the history file
# rather than overwriting it.
export HISTCONTROL=erasedups
export HISTSIZE=10000

# Added to signal 1password-cli
export XDG_CONFIG_HOME="${HOME}/.config"

export EDITOR="nvim"

alias kvim='NVIM_APPNAME="nvim-kickstart" nvim'

# Why not `alias vim=nvim`? Rather that having the redirection, I would rather
# develop the muscle memory to type nvim.
alias vim="echo woopsy, you probably meant nvim or kvim, right?"

autoload colors && colors
PS1="%{$fg[yellow]%}%~ %{$reset_color%}%\? "

if [ -f /opt/homebrew/etc/profile.d/autojump.sh ]; then
  source /opt/homebrew/etc/profile.d/autojump.sh
fi
