Import-Module ServerManager
Add-WindowsFeature Web-Server, Web-Asp-Net45, Web-Metabase, NET-Framework-45-Features, Web-Mgmt-Console, Web-Lgcy-Mgmt-Console
Add-WindowsFeature Web-Windows-Auth
Add-WindowsFeature MSMQ-Server
dism /online /enable-feature /featurename:NetFX3 /all /source:c:\bin\sxs
cd c:\temp\bin\ODAC112030Xcopy_x64
Start-Process -FilePath "install.bat" -ArgumentList "all c:\oracle odac" -wait