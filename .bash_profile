export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
if [ -d "/Applications/Atom.app/Contents/MacOS/Atom" ]; then
    alias atom='/Applications/Atom.app/Contents/MacOS/Atom'
fi
if [ -d "$HOME/.rbenv/bin" ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:${PYENV_ROOT}/shims:$PATH
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
if which aws > /dev/null; then complete -C aws_completer aws; fi
alias dl='docker ps -l -q'
alias ll='ls -la'

