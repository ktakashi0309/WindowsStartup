$chocolateyPackageList =@(
    'git',
    'GoogleChrome',
    'visualstudiocode',
    'googlejapaneseinput',
    'nodejs'
)

$chocolateyPackageList|%{Install-Package $_ -Force -ProviderName ChocolateyGet}

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