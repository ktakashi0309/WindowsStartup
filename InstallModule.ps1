#何故かWarningが消えないのでnull捨て
Install-Module PowerShellGet -Force 3> $null
#最初から入っているPSReadlineをremove
Remove-Module PSReadLine
Install-Module PSReadline -AllowPrerelease -Force
Install-Module posh-git -Force
