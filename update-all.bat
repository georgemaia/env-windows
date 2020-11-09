@echo off

echo Disabling proxies...
set HTTP_PROXY=
set HTTPS_PROXY=
echo .

echo Updating all packages...
call choco upgrade all
echo .