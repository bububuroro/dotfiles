# go
GOPATH=$HOME/dev
PATH=$PATH:$GOPATH/bin
PATH=$PATH:/usr/lib/go-1.9/bin

if [ -e $HOME/.pyenv ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi
