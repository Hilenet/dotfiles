# embbed
alias ls="ls -G"
alias l="ls"
alias la="ls -a"
alias ll="ls -l"

function cmd_exist() {
  return $(type $1>/dev/null 2>&1)
}

# git
if $(cmd_exist git) ; then
  alias g=git
  alias gti=git
  source $HOME/.bash/.git-completion
fi

# docker-compose
if $(cmd_exist docker-compose) ; then
  alias doc="docker-compose"
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
