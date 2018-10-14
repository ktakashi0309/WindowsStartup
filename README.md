# WindowsStartup
Windows10をクリーンインストールしたときに各種設定やソフトウェアのインストールを行うスクリプトを実行します。

# RUN

WindowsUpdateを完了させる

管理者権限のpowershellで下記コマンドを実行し、一度powershellを閉じる
Install-Module PackageManagement –Force

再度管理者権限でpowershellを開き下記コマンド実行
```
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/ktakashi0309/WindowsStartup/master/windowsStartup.ps1'))
```