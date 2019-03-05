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
  alias gti=git
  source $HOME/.bash/.git-completion
fi

