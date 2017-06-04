# Problem with Vagrant + Virtualbox
2017-05-30, 2017-06-03

## Issue Summary
The following is a report about my computer freezing while Vagrant was booting up. The machine index was corrupted from the freeze, and my vagrant box was not accessible. Went through several troubleshooting steps to resolve the issue, and eventually got my machine back up.

## Timeline (All times in PST)
### 2017-05-30
- 18:30 - Computer froze due to overheating; Hard shutdown and reboot
- 18:35 - Attempted to boot virtual machine through vagrant, but it failed
- 18:45 - Resolved several configuration issues, but VM remained inaccessible
- 18:55 - Data was recovered, and VM was booted by resolving more configuration issues
- 18:00 - Fix auxilliary configuration problems
- 19:15 - Installed temperature monitoring tool, and fan speed monitoring tools
- 19:45 - Took apart computer and discovered fans are operational, but do not spin when system finishes booting
- 20:00 - Decided on a temporary cooling solution, until an external piece of hardware could be implemented
### 2017-06-03
- 11:30 - Purchased laptop cooling pad as a permanent hardware based cooling solution.

## Root Cause
At 18:30 PT, computer froze due to overheating while a virtual machine was booting. After recovering lost data, further investigation into the issue revealed that the fan does not operate when the operating system finishes booting, due to misconfigured or non-existent drivers. Additionally, there was no temperature monitoring solution that would have alerted the user to manually cool the hardware.

## System Specifications
Hardware: Dell Inspiron 3558 Laptop (2016)
  - CPU: Intel(R) Core(TM) i5-5200U CPU @ 2.20GHz
  - RAM: 8GiB Installed onboard. Model: Hynix/Hyundai 1600 MHz (S/N)CAF7D895
  - GPU: Onboard: Broadwell-U Integrated Graphics, 33MHz Clock
  - Boot Drive: Internal SanDisk SDSSDA24 Solid State Drive, 223GiB
Operating System: Ubuntu 16.04.1 LTS Xenial
  - Kernel: 4.4.0-75-generic x86_64
  - Desktop Environment: LXDE (Lubuntu)

## Detailed Resolution and Recovery
### Recovery of virtual development environment
0. Error:
```
The machine index which stores all required information about
running Vagrant environments has become corrupt. This is usually
caused by external tampering of the Vagrant data folder.

Vagrant cannot manage any Vagrant environments if the index is
corrupt. Please attempt to manually correct it. If you are unable
to manually correct it, then remove the data file at the path below.
This will leave all existing Vagrant environments "orphaned" and
they'll have to be destroyed manually.

Path: C:/Users/Username/.vagrant.d/data/machine-index/index
```

* [Corrupted index file, Stack overflow](https://stackoverflow.com/questions/24911021/vagrant-corrupted-index-file-c-users-username-vagrant-d-data-machine-index-ind)

1. Navigated to ``~/.vagrant.d/data/machine-index/`` and ran the command: ``rm -f *``

2. Next, encountered this error:

```
The VirtualBox VM was created with a user that doesn't match the current user running Vagrant. VirtualBox requires that the same user be used to manage the VM that was created. Please re-run Vagrant with that user. This is not a Vagrant issue.

The UID used to create the VM was:
Your UID is: 1000
```

* [Stackoverflow: UID doesn't match current user](https://stackoverflow.com/questions/31644222/vagrant-not-starting-up-user-that-created-vm-doesnt-match-current-user )

3. Navigated to ``~/Documents/.vagrant/machines/default/virtualbox/`` and ran this command: ``echo -n 1000 >> creator_uid && vagrant up``

4. Vagrant brought up a new machine, not my original VM. Had to get my original VM back.
[vagrant box disconnected](https://github.com/mitchellh/vagrant/issues/1755)

5. Navigated to: ``~/Virtualbox\ VMs/Documents_default_1492630824800_98335/Documents_default_1492630824800_98335.vbox-prev`` and located this line:

```
  <Machine uuid="{db179e00-3ba1-4e08-a86a-ad7ab69ddac4}" name="Documents_default_1496197504242_4039" OSType="Ubuntu_64" snapshotFolder="Snapshots" lastStateChange="2017-04-18T22:10:38Z">
```

6. Navigated to: ``/home/concati/Documents/.vagrant/machines/default/virtualbox`` and ran this command: 

```
echo -n db179e00-3ba1-4e08-a86a-ad7ab69ddac4 > id
vagrant up
```

7. Original development environment virtual machine was recovered, started a clean up process
8. Destroyed all other machines that I didn't need through the virtualbox GUI.


### Auxillary problems
Problem: ``vagrant ssh`` was not authenticating correctly.

1. Generated a new ssh key: ``ssh-keygen -t rsa -b 4096 -C "vagrant"``

2. Moved the new key to ``/home/$(whoami)/Documents/.vagrant/machines/default/virtualbox/private_key``

3. Booted into the vagrant box and copied the contents of id_rsa.pub into ``~/.ssh/authorized_keys``

4. Deleted the old public key in ``~/.ssh/authorized_keys``

### Investigation of Overheating Problem
1. Turned off computer and removed back panel to see if the fan was operational.
2. Carefully reconnected powersupply and turned on computer. Fan turned on, but stopped when os completed booting.
3. Attempted to change fan speed settings in BIOS, but did not find any options to.
4. Attempted to install fan control software solutions, but none worked.
5. Installed temperature monitoring software.
6. Resorted to using a temporary cooling solution.
7. Purchased a laptop cooling pad.

## Corrective and Preventative Measures
It will be necessary to look into this problem in the future, but for now, the laptop cooling pad solution has the system operating within acceptible ranges. Further investigation into the fan configuration problem is overshadowed by higher priorities. If there were another team to escalate this issue to, I would, but it's only a one man team...

### Other avenues investigated:
* Changing the value: ``GRUB_CMLINE_LINUX_DEFAULT="quiet splash"`` to ``GRUB_CMLINE_LINUX_DEFAULT="quiet splash acpi_osi=Linux"`` in ``/etc/default/grub`` did not work. [From this link](https://forums.linuxmint.com/viewtopic.php?f=42&t=56323)


## Author
* **Ian Liu-Johnston**
