#!/usr/bin/env bash
echo 'centos7primer'
sleep 1
echo 'doing yum update'
yum update -y
echo 'installing tasty tools'
yum install epel-release nano git wget nmap -y 
yum install htop -y 
echo '
HISTSIZE=9000
HISTFILESIZE=$HISTSIZE
HISTCONTROL=ignorespace:ignoredups

_bash_history_sync() {
  builtin history -a         #1
  HISTFILESIZE=$HISTSIZE     #2
  builtin history -c         #3
  builtin history -r         #4
}

history() {                  #5
  _bash_history_sync
  builtin history "$@"
}

PROMPT_COMMAND=_bash_history_sync
' >> /etc/profile
cd;echo 'export PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\$ "' >> .bashrc ; echo "alias ls='ls -l --color=always'" >> .bashrc
cd;echo 'alias ls='ls -l --color=always' >> .bashrc
git config --global user.email "pooley999@gmail.com"
git config --global user.name "muddydev"
echo "you need to exit and reconnect"
