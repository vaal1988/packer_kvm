$puppetagentx64_download_path = "https://downloads.puppetlabs.com/windows/puppet6/puppet-agent-6.22.1-x64.msi"

$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("$puppetagentx64_download_path","C:\puppet-agent_x64.msi")