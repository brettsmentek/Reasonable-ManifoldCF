@echo off
rem Licensed to the Apache Software Foundation (ASF) under one or more
rem contributor license agreements.  See the NOTICE file distributed with
rem this work for additional information regarding copyright ownership.
rem The ASF licenses this file to You under the Apache License, Version 2.0
rem (the "License"); you may not use this file except in compliance with
rem the License.  You may obtain a copy of the License at
rem
rem     http://www.apache.org/licenses/LICENSE-2.0
rem
rem Unless required by applicable law or agreed to in writing, software
rem distributed under the License is distributed on an "AS IS" BASIS,
rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem See the License for the specific language governing permissions and
rem limitations under the License.

rem check that JAVA_HOME is set, and that the current directory is correct
if not exist "%JAVA_HOME%\bin\java.exe" goto nojavahome
if not exist ".\properties.xml" goto nolcfhome
rem invoke the AgentRun command
cmd /c ".\executecommand.bat -Dorg.apache.manifoldcf.processid=A org.apache.manifoldcf.agents.AgentRun"
goto done
:nojavahome
echo Environment variable JAVA_HOME is not set properly.
goto done
:nolcfhome
echo Current working directory does not contain a properties.xml file.
goto done
:done
