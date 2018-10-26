$scriptList = @(
    'InstallPackage.ps1'
)

filter Invoke-Script{
    $object1 = new-object net.webclient
    $object2 = $object1.DownloadString('https://raw.githubusercontent.com/ktakashi0309/WindowsStartup/master/'+$_)
    Invoke-Expression $object2
}

$scriptList|Invoke-Script