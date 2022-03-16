#!/bin/bash

sudo apt-get update
sudo apt-get install -y build-essential curl file git

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

brew install --cask chromedriver
brew install --cask visual-studio-code
brew install p7zip
brew cask install java
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
alias java11='export JAVA_HOME=$JAVA_11_HOME'
brew install python@3.10
brew install node
brew install --cask dotnet
brew install --cask visual-studio
brew install --cask virtualbox
brew install --cask vagrant
brew install --cask grammarly
brew install mysql