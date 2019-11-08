alias chbashrc='vim ~/.bash_profile;source ~/.bash_profile'
alias c='clear'
alias cd..='cd ..'
alias untar='tar -zxvf'
alias ll='exa -la'
alias lint='node node_modules/eslint/bin/eslint.js $(git diff --name-only --cached | xargs)'

#git
alias gs='git status'
alias git='LANG=en_US git'
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
		echo " (${BRANCH})"
	else
		echo ""
	fi
}

function parse_hg_branch {
  BRANCH=`hg branch 2> /dev/null | sed -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo " (${BRANCH})"
	else
		echo ""
	fi
}

#
set -o vi
source /usr/local/Cellar/git/2.20.1/etc/bash_completion.d/git-completion.bash
export PS1="\[\e[33m\]\u\[\e[m\] \[\e[32m\]\W\[\e[m\]\[\e[34m\]\`parse_git_branch\`\`parse_hg_branch\`\[\e[m\] \`defineUser\` "
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
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=${PATH}:${ANDROID_HOME}
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin

export PGDATA='/usr/local/var/postgres'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/Cellar/mongo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/blackneck/google-cloud-sdk/path.bash.inc' ]; then . '/Users/blackneck/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/blackneck/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/blackneck/google-cloud-sdk/completion.bash.inc'; fi
