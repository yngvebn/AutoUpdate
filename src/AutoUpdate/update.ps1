Write-Host "Sleeping!"

Start-Sleep -s 2
Write-Host "Slept!"

pushd
cd C:\Users\yngven\Dropbox\Projects\_GitHub\AutoUpdate
Invoke-Expression "git fetch"
Invoke-Expression "c:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe /m /p:Configuration=Debug /verbosity:q /p:WarningLevel=0 /t:rebuild '.\src\AutoUpdate.sln'" 
popd


Invoke-Expression ".\AutoUpdate.exe"