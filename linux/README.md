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
	<!-- 系統為 linux inside docker container -->
	apt-get update
    apt-get install build-essential curl file git --no-install-recommends -y
    rm -rf /var/lib/apt/lists/*
    useradd -m -s /bin/bash linuxbrew && \
    echo 'linuxbrew ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers
    ```

2. install homebrew & set configuration path

    ``` code = bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
    ```

	> check brew command, if there is any git-command-needed, using the below command
		``` code = bash
			rm -fr $(brew --repo homebrew/core)
			brew tap homebrew/core
		```
    > :warning: please watch out permission(777)

> :warning: must run under administrator status  

## Using bat to install

``` code = bash
    brew install docker
    brew install docker-compose
    brew install openjdk@11
    export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
    alias java11='export JAVA_HOME=$JAVA_11_HOME'
    brew install python@3.10
    brew install node
    brew install mysql
```

> :warning: ubuntu inside docker-containers is non-root os  

## Update

``` code=bash
brew update
```

## Remove

``` code=bash
brew uninstall -y <package name>
```
