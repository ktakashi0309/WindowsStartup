Import-Module PackageManagement
Install-PackageProvider NuGet -Force
Install-PackageProvider ChocolateyGet -Force
Install-Module PowerShellGet -Force
Install-Module posh-git -Force
Install-Module PSReadline -AllowPrerelease -Force -SkipPublisherCheck