autoload -Uz compinit
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zmodload zsh/nearcolor
PS1="%B%F{blue}%n%F{magenta}@%F{blue}%m %F{magenta}%~ $ %f%b"
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

# scroll history
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "^P" ]] && bindkey -- "^P" up-line-or-beginning-search
[[ -n "^N" ]] && bindkey -- "^N" down-line-or-beginning-search

# autocompletion
compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

source $XDG_CONFIG_HOME/shell/aliasrc
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 2>/dev/null

if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec startx "$XDG_CONFIG_HOME/x11/xinitrc"
fi
