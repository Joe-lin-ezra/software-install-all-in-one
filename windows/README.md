# Windows installation

## First step

1. install chocolatey

Install with PowerShell.exe

``` code = bash
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

> :warning: must run under administrator status  

## Using bat to install

``` code = bash
choco install -y googlechrome 
choco install -y vscode
choco install -y line
choco install -y 7zip
choco install -y git
choco install -y jdk11
choco install -y python 
choco install -y nodejs-lts
choco install -y dotnetfx
choco install -y vcredist140
choco install -y notepadplusplus.install
choco install -y virtualbox
choco install -y vagrant
choco install -y android-sdk
choco install -y androidstudio
choco install -y grammarly-for-windows
choco install -y teamviewer
choco install -y mysql.installer
```

> :warning: must run under administrator status  

## Update

``` code=bash
choco upgrade -y all
```

## Remove

``` code=bash
choco uninstall -y <package name>
```
