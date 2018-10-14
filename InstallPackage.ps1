$packageList =@(
    'git',
    'GoogleChrome',
    'visualstudiocode',
    'googlejapaneseinput',
    'nodejs'
)

$packageList|%{Install-Package $_ -Force -ProviderName ChocolateyGet}


$Env:Path = [Environment]::GetEnvironmentVariable('Path','Machine') +';'+ [Environment]::GetEnvironmentVariable('Path','User')

