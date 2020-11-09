# Windows Applications Install
Windows environment install after formatting

This repository contains installation and update scripts, I use in my daily work.
They depend on [chocolatey](http://chocolatey.org/), which is the package manager, I like most on Windows.
Please start `cmd.exe` as administrator and run [install.bat](install.bat).

You can simply switch from manual installation to chocolatey, because chocolatey uses the installers provided by the software vendors.
They should be capabale to recognize an existing installation.

Run [update-all.bat](update-all.bat) from time to time to ensure that all packages are up to date.

![Chocolatey-logo](https://chocolatey.org/content/images/logo_square.svg "Logo")


# Chocolatey install scripts
Chocolatey is a package manager for windows, allowing you to install apps with a single command. This is how you install git using chocolatey: ```choco install git```

See [github repo](https://github.com/chocolatey/choco)

## Usage
**First install Chocolatey using cmd**

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

## Documentation
Please see the [wiki](https://github.com/chocolatey/choco/wiki)

Give `choco.exe /?` a shot (or `choco.exe -h`). For specific commands, add the command and then the help switch e.g. `choco.exe install -h`.

Check out [Chocolatey's homepage](https://chocolatey.org/) or this [github repo](https://github.com/chocolatey/chocolatey).


## Applications

* 7-Zip
* Adobe Acrobat Reader DC 
* Amazon Send to Kindle
* calibre
* Composer - Php Dependency Manager	
* DBeaver
* Dropbox
* FileZilla Client 
* Font-Awesome
* Git
* LibreOffice
* MEGAsync	
* Microsoft PowerToys
* Microsoft Visual Studio Code
* Mozilla Firefox
* Oracle VM VirtualBox 
* Pandoc
* Putty
SyncToy
* TeamViewer
* VeraCrypt	
* VLC media player
* VNC Viewer
* WindirStat
* WinSCP
* XAMPP	