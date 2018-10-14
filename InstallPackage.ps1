Install-Package git -Force
Install-Package GoogleChrome -Force
install-package visualstudiocode -Force
install-package googlejapaneseinput -Force
install-package nodejs -Force

$Env:Path = [Environment]::GetEnvironmentVariable('Path','Machine') +';'+ [Environment]::GetEnvironmentVariable('Path','User')

