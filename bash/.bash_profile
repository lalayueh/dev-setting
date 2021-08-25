if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export NODE_OPTIONS="--max-old-space-size=4096"

#
export NVM_DIR="${HOME}/.nvm"
. /usr/local/opt/nvm/nvm.sh

export GPG_TTY=$(tty)
export COCOAPODS_NO_BUNDLER=1
alias login-aws-mediot="aws-vault exec mediot-infra --duration=1h"
alias logout-aws-mediot="aws-vault remove mediot-infra -s"
alias get-farhugs-prod-key="cd /Users/yueh/code/mediot/mediot-infra/environment/prod/service/farhugs ; aws-vault exec mediot-infra -- terraform output management_api_key; cd - > /dev/null"
alias get-farhugs-stage-key="cd /Users/yueh/code/mediot/mediot-infra/environment/stage/service/farhugs ; aws-vault exec mediot-infra -- terraform output management_api_key; cd - > /dev/null"
nvm use default

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init --path)"; eval "$(pyenv virtualenv-init -)" ; fi

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:~/apache-maven-3.6.3/bin

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
