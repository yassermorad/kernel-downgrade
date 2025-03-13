@ECHO OFF

SET NEWNAME=
SET /P NEWNAME= Select a new PC name: 

::Change PC Name
WMIC ComputerSystem where Name='%computername%' call Rename Name='%NEWNAME%'

CLS
Echo Process Complete..
pause