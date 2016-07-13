@echo off
start /B cmd.exe /K runzookeeper.bat

start /B cmd.exe /K setglobalproperties.bat

start /B cmd.exe /K start-database.bat

start /B cmd.exe /K initialize.bat

start /B cmd.exe /K start-agents.bat

start /B cmd.exe /K start-agents-2.bat

start /B cmd.exe /K start-webapps.bat