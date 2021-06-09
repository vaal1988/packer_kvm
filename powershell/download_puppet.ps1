$puppetagentx64_download_path = "https://downloads.puppetlabs.com/windows/puppet6/puppet-agent-6.22.1-x64.msi"

Write-Host "downloading"
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("$puppetagentx64_download_path","C:\install\puppetagent-x64.msi")