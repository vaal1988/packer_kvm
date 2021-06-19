# https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse
# powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/vaal1988/packer_kvm/main/scripts/install_ssh.ps1'))"

Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0

Set-Service sshd -StartupType Automatic
Set-Service ssh-agent -StartupType Automatic
Stop-Service sshd
Stop-Service ssh-agent

New-ItemProperty -Path "HKLM:\SOFTWARE\OpenSSH" -Name DefaultShell -Value "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -PropertyType String -Force

New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22


