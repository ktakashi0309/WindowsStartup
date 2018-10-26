Set-ExecutionPolicy RemoteSigned -Force

$providerList = @(
    'NuGet',
    'ChocolateyGet',
    'Chocolatey',
    'PowerShellGet'
)

$providerList|%{Install-PackageProvider $_ -Force}
