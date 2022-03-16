# Linux-like systems installation

## First step

1. pre-requirements of install Homebrew

    ``` code = bash
    <!-- 系統為Debian 或Ubuntu -->
    sudo apt-get update
    sudo apt-get install -y build-essential curl file git
    <!-- 系統為Fedora, CentOS, 或Red Hat -->
    sudo yum group install 'Development Tools'
    sudo yum install curl file git
    sudo yum install libxcrypt-compat
    ```

2. install homebrew & set configuration path

    ``` code = bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
    ```

3. install homebrew inside docker container

    ``` code = bash
    apt-get update
    apt-get install build-essential curl file git ruby-full locales --no-install-recommends -y
    rm -rf /var/lib/apt/lists/*

    useradd -m -s /bin/bash linuxbrew && \
    echo 'linuxbrew ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

    PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"
    ```

> :warning: must run under administrator status  

## Using bat to install

``` code = bash
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
```

> :warning: must run under administrator status  

## Update

``` code=bash
brew update
```

## Remove

``` code=bash
brew uninstall -y <package name>
```
