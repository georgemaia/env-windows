@echo off

echo This will first install chocolatey, then other tools
echo .
echo Browse https://chocolatey.org/packages for packages
echo .
echo Ensure that your cmd.exe runs as Administrator
echo .
echo If at university, disable any proxy in the Internet Explorer Network settings.
echo .
pause
echo .

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation
pause

echo Now chocolatey should be ready and we can go ahead
echo .
pause

choco install git.install -y --params "/GitAndUnixToolsOnPath /NoAutoCrlf /WindowsTerminal"
call refreshenv
rem always have Linux line endings in text files
git config --global core.autocrlf input
rem support more than 260 characters on Windows
rem See https://stackoverflow.com/a/22575737/873282 for details
git config --global core.longpaths true
rem some color and diff tweaks
rem   Use SVN's ||| also in git
rem   See https://git-scm.com/docs/git-config#Documentation/git-config.txt-mergeconflictStyle for details
git config --global merge.configStyle "diff3"
rem Always push to the branch we pulled from
rem   See https://git-scm.com/docs/git-config#Documentation/git-config.txt-pushdefault for details
git config --global push.default upstream
git config --global color.diff.new "green bold"
git config --global color.status.updated "green bold"
git config --global color.branch.current "green bold"
rem Sort branches at "git branch -v" by committer date
git config --global branch.sort -committerdate

choco install git

choco install 7zip

choco install adobereader

choco install anaconda3

choco install androidstudio

choco install anydesk

choco install brave

choco install calibre

choco install composer

choco install dbeaver

choco install docker-desktop

choco install dropbox

choco install firacode

choco install filezilla

choco install font-awesome-font

choco install gimp

choco install intellijidea-community

choco install kdenlive

choco install libreoffice-fresh

choco install megasync

choco install obs-studio

choco install openshot

choco install pandoc

choco install putty.install

choco install python3

choco install sendtokindle

choco install sql-server-management-studio

choco install synctrayzor

choco install teamviewer

choco install vmware-workstation-player

choco install virtualbox

choco install vnc-viewer

choco install bitnami-xampp

choco install ventoy

choco install veracrypt

choco install vlc

choco install virtualbox

choco install vscode
choco pin add -n vscode

choco install winscp.install

choco install windirstat

choco install sysinternals
choco install powertoys
choco pin add -n=powertoys

rem koppor's very special tools
choco install pandoc

rem This package requires manual intervention
choco install veracrypt

goto END

:END

echo To keep your system updated, run update-all.bat regularly from an administrator CMD.exe.
echo .
pause
