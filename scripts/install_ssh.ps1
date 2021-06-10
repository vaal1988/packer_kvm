# https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse

Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0

Set-Service sshd -StartupType Automatic
Set-Service ssh-agent -StartupType Automatic
Stop-Service sshd
Stop-Service ssh-agent

New-ItemProperty -Path "HKLM:\SOFTWARE\OpenSSH" -Name DefaultShell -Value "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -PropertyType String -Force

New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22