alias chbashrc='vim ~/.bash_profile;source ~/.bash_profile'
alias c='clear'
alias cd..='cd ..'
alias untar='tar -zxvf'
alias ll='ls -laGO'
alias lint='node node_modules/eslint/bin/eslint.js $(git diff --name-only --cached | xargs)'

eval "$(thefuck --alias)"

#git
alias gs='git status'
alias log='git log --name-status'
function defineUser() {
string=`pwd`
if [[ $string = *"lososik"* ]]; then
 echo '👩🏼‍💻'
else
 echo '💩'
fi
}

function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo " (${BRANCH}${STAT})"
	else
		echo ""
	fi
}

#
set -o vi
source ~/.git-completion.bash;
export PS1="\[\e[33m\]\u\[\e[m\] \[\e[32m\]\W\[\e[m\]\[\e[34m\]\`parse_git_branch\`\[\e[m\] \`defineUser\` "
export REACT_EDITOR=code;
export EDITOR=code;
export adbId='192.168.56.101:5555'

function cs() {
  cd "$1" && ll
}

function cpdir () {
  cp -av $1 $2
}

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export PGDATA='/usr/local/var/postgres'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$HOME/.yarn/bin:$PATH"
