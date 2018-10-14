$packageList =@(
    'git',
    'GoogleChrome',
    'visualstudiocode',
    'googlejapaneseinput',
    'nodejs'
)

$packageList|%{Install-Package $_ -Force}

$Env:Path = [Environment]::GetEnvironmentVariable('Path','Machine') +';'+ [Environment]::GetEnvironmentVariable('Path','User')

