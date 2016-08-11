#!/usr/bin/env bash

# brew setup
################################################################################
sudo apt-get install -y build-essential curl git python-setuptools ruby
git clone https://github.com/Linuxbrew/brew.git ~/.linuxbrew

export PATH="$HOME/.linuxbrew/bin:$PATH"

cat >>~/.bashrc <<EOL
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
EOL

source ~/.bashrc

# git setup
################################################################################
cat >~/.gitconfig <<EOL
[user]
	email = lemtzas@gmail.com
	name = Lemtzas
[alias]
	co = checkout
	br = branch
	ci = commit
	st = status
[merge]
	commit = no
	ff = no
[push]
	default = simple
EOL

# CLI setup
################################################################################
brew install bash-git-prompt

cat >> ~/.bashrc <<EOL
# brew install bash-git-prompt
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Solarized
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi
EOL

# nice pastebin utility
cat >> ~/.bashrc <<EOL
alias tb="netcat termbin.com 9999"
EOL
