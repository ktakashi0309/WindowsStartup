# WindowsStartup
Windows10をクリーンインストールしたときに各種設定やソフトウェアのインストールを行うスクリプトを実行します。

# RUN
powershellにて下記コマンド実行
```
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/ktakashi0309/WindowsStartup/master/windowsStartup.ps1'))
```