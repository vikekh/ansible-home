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
* Wifi card drivers https://www.asus.com/se/Networking-IoT-Servers/Adapters/All-series/PCEAC68/HelpDesk_Download/
* Install requirements WSL2
* VS2019 workloads
* Possible roles:
  * Checksum
  * FileBot
  * Universal Silent Switch Finder
  * Win32 Disk Imager
  * LG OnScreen Control
