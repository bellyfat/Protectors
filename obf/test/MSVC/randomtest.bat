@ECHO OFF
cl /EHsc advapi32.lib ..\helper.cpp
SET NN=%1
IF NOT .%1 == . GOTO LABEL0
SET NN=1024
:LABEL0

IF NOT ERRORLEVEL 1 GOTO LABEL1
EXIT /B
:LABEL1

helper.exe %NN% >obftemp.bat
IF NOT ERRORLEVEL 1 GOTO LABEL1
EXIT /B
:LABEL1

CALL obftemp.bat


