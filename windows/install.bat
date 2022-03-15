Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

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