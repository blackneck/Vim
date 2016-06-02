alias ll='ls -la | lolcat'
alias chbashrc='vim ~/.bash_profile;source ~/.bash_profile'
alias c='clear'
alias cd..='cd ..'
alias docker-init="source /Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/Resources/Scripts/start.sh"


#git
alias status='git status | lolcat '
alias log='git log --name-status'
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

#
set -o vi
source ~/.git-completion.bash;
export PS1='\[\033[01;32m\]\u \e[1;33m\w \e[1;34m$(parse_git_branch)\e[0;37m💩 ☞  '

#
function cs() {
  cd "$1" && ll
}

function cpdir () {
  cp -av $1 $2
}
