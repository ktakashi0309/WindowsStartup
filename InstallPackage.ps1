$chocolateygetPackageList =@(
    'git',
    'GoogleChrome',
    'visualstudiocode',
    'nodejs'
)
$chocolateyPackageList =@(
    'GoogleJapaneseInput'
)
$psgetPackageList =@(
    'posh-git'
)
$psgetbetaPackageList =@(
    'PSReadLine'
)
$nugetPackageList=@(

)

$chocolateygetPackageList|%{Install-Package $_ -Force -ProviderName ChocolateyGet}
$chocolateyPackageList|%{Install-Package $_ -Force -ProviderName Chocolatey}
$psgetPackageList|%{Install-Package $_ -Force -ProviderName PowerShellGet}
$psgetbetaPackageList|%{Install-Package  -AllowPrereleaseVersions $_ -Force -ProviderName PowerShellGet}
$nugetPackageList|%{Install-Package $_ -Force -ProviderName NuGet}


$Env:Path = [Environment]::GetEnvironmentVariable('Path','Machine') +';'+ [Environment]::GetEnvironmentVariable('Path','User')

$npmPackageList=@(
    'eslint-cli'
)

$npmPackageList|%{npm install -g $_}

$vscodeExtentionList=@(
    'MS-CEINTL.vscode-language-pack-ja',
    'vscodevim.vim'
)

$vscodeExtentionList|%{code --install-extension $_}