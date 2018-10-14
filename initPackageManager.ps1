Set-ExecutionPolicy RemoteSigned -Force

$providerList = @(
    'NuGet',
    'ChocolateyGet',
    'PowerShellGet'
)

$providerList|%{Install-PackageProvider $_ -Force}
