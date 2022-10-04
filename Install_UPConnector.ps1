# This script installs the Microsoft application UPConnector so that we may set 
# up cloud printing for them.

$url = "https://aka.ms/UPConnector"
$outpath = "C:\UPCConnector.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath
$args = @("-Force","-Silent")
Start-Process -Filepath "C:\UPCConnector.exe" -ArgumentList $args
