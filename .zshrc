PROMPT='[%n@%~]'
setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history


# Use modern completion system
autoload -Uz compinit
compinit

# aliases
alias ll='ls -lF'
alias grep='grep --color --exclude-dir=.git'
alias tmux='tmux -u'
alias dcs='docker-compose'


# move
## move without cd
setopt auto_cd

## move only with dir name to directly under $HOME dirs
cdpath=(.. ~ $GOPATH/src)


## peco
function peco-src() {
  local src=$(ghq list --full-path | peco)
  if [ -n "$src" ]; then
    BUFFER="cd $src"
    zle accept-line
  fi
  zle -R -c
}
zle -N peco-src
bindkey '^]' peco-src

# other
## English
export LANG=en_US

# local zshrc
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
