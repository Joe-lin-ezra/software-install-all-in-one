#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

rm -fr $(brew --repo homebrew/core)
brew tap homebrew/core

brew install docker
brew install docker-compose
brew install openjdk@11
export JAVA_HOME=/path/to/openjdk
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
brew install python@3.10
brew install node
brew install mysql

