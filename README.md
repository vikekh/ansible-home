# install

```yml
# Not working under WSL2
ansible-galaxy install -r requirements.yml
```

```ps
# Get application/product ID
get-wmiobject Win32_Product | Sort-Object -Property Name |Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize
```

HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall

## TODO

* Chocolatey install switches
* Regedit disable context menus
* Taskbar shortcuts https://docs.microsoft.com/en-us/windows/configuration//configure-windows-10-taskbar
* Optional features
* Linux apt packages
* Install requirements WSL2
* VS2019 workloads
* Possible roles:
  * Checksum
  * FileBot
  * Universal Silent Switch Finder
  * Win32 Disk Imager
  * LG OnScreen Control
  * Messenger
  * Origin (Chocolatey) - has package parameters
  * Epic Launcher
  * AMD Ryzen Master
  * MSI Afterburner
  * UserBenchMark
  * EA Desktop
  * Xbox
  * VLC Blu-ray
  * Mediainfo (Chocolatey)
* Set default apps
* Autostart apps
* etc/hosts
* https://www.howtogeek.com/howto/5270/quick-tip-disable-search-history-display-in-windows-7/

## New Install

1. C:\Users\Viktor\Downloads\UT_PCE_AC68_2143.zip\UT_PCE_AC68_v2143\Autorun

### Ansible/OpenSSH

1. https://docs.ansible.com/ansible/latest/user_guide/windows_setup.html#windows-ssh-setup
2. https://github.com/PowerShell/Win32-OpenSSH/wiki/Install-Win32-OpenSSH
3. Default shell:

New-ItemProperty -Path "HKLM:\SOFTWARE\OpenSSH" -Name DefaultShell -Value "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -PropertyType String -Force
New-ItemProperty -Path "HKLM:\SOFTWARE\OpenSSH" -Name DefaultShellCommandOption -Value "/c" -PropertyType String -Force

### WSL2

1. https://docs.microsoft.com/en-us/windows/wsl/install-win10
2. Install Ubuntu 20.04 LTS from Microsoft Store
3. IP to Windows: https://devdojo.com/mvnarendrareddy/access-windows-localhost-from-wsl2
   /etc/resolv.conf
4. ssh-keygen -t rsa -b 4096 -C "viktor@spirou2-wsl2"

### Ansible WSL2/Ubuntu

1. https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu
2. export PATH=$PATH:~/.local/bin
3. sudo apt-get install sshpass
4.
ansible-galaxy collection install ansible.windows
ansible-galaxy collection install community.windows

## Misc.

1. Uninstall Spotify from MS Store
