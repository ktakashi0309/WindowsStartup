Import-Module PackageManagement
Install-PackageProvider NuGet -Force
Install-PackageProvider ChocolateyGet -Force

Install-Module PSReadLine -Force
Install-Module posh-git -Force