@ECHO OFF
setlocal EnableDelayedExpansion
color 3e
title 标题
  
PUSHD %~DP0 & cd /d "%~dp0"
%1 %2
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :runas","","runas",1)(window.close)&goto :eof
:runas
echo Successfully ran as administrator.
mklink /J ".\Client\ExcelLink" ".\Excel"
mklink /J ".\Client\MusicLink" ".\Music"
pause >nul
exit