Write-Host "Checking for updates"

pushd
cd C:\Users\yngven\Dropbox\Projects\_GitHub\AutoUpdate
Invoke-Expression "git pull"
Invoke-Expression "c:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe /m /p:Configuration=Debug /verbosity:q /p:WarningLevel=0 /t:rebuild '.\src\AutoUpdate.sln'" 
popd
Write-Host "Update done. Restarting"

Invoke-Expression ".\AutoUpdate.exe"