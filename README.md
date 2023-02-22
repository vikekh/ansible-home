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

## New Install (Windows)

### Ansible/OpenSSH

1. Install OpenSSH, see [Windows SSH Setup](https://docs.ansible.com/ansible/latest/user_guide/windows_setup.html#windows-ssh-setup)
   * If installing manually, see [Install Win32 OpenSSH](https://github.com/PowerShell/Win32-OpenSSH/wiki/Install-Win32-OpenSSH)
2. Set default shell to PowerShell, see [DefaultShell](https://github.com/PowerShell/Win32-OpenSSH/wiki/DefaultShell)

### WSL2

1. Install WSL2, see [Install](https://docs.microsoft.com/en-us/windows/wsl/install#install)
2. Install latest Ubuntu from Microsoft Store

### How to Find Host IP on WSL2 Ubuntu

```
cat /etc/resolv.conf
```

### WSL2 Ubuntu

1. Run `ssh-keygen -t rsa -b 4096 -C "viktor@spirou2-wsl2"`
   * Try SSH:ing to host: `ssh username@hostip`
   * Check host `C:\Users\username\.ssh\authorized_keys`
2. Install Ansible, see [Install Ansible on Ubuntu](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu)
3. Install required Ansible collections:
   ```
   ansible-galaxy collection install ansible.windows
   ansible-galaxy collection install community.windows
   ansible-galaxy collection install community.general.snap
   ```
4. Run playbook: `ansible-playbook myplaybook.yml -i hosts -e ansible_host=hostip`

## Misc.

1. Uninstall Spotify from MS Store
