@Echo OFF
Echo "Building solution/project file using batch file"
SET PATH=C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin
SET SolutionPath=%~dp0\rAthena.sln
Echo Start Time - %Time%
MSbuild.exe %SolutionPath% /p:PlatformToolset=v143 /m
Echo End Time - %Time%
Set /p Wait=Build Process Completed...