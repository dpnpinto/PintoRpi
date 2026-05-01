# Nice [Raspberry Pi](https://www.raspberrypi.com) projects for you
## MENU

### [How to Install Alpine Linux on a Pi](#How_to_Install_Alpine_Linux_on_a_Pi)
### [AdGuard on a Pi with Alpine Linux](#AdGuard_on_a_Pi_with_Alpine_Linux)
### [50 Buck's full Arch Linux Computer on a Pi](#50_Buck's_full_Arch_Linux_Computer_on_a_Pi)
### [A nice ZX Spectrum emulator for the 50 buck's PC](#A_nice_ZX_Spectrum_emulator_for_the_50_buck's_PC)

## How to Install Alpine Linux on a Pi

* How to do it [YouTube Alpine Linux Play List](https://www.youtube.com/playlist?list=PLJLtDhjIXxVUTWNq97O71LMt2KICNkpve)
References:
* [AlpineLinux](https://alpinelinux.org)

## AdGuard on a Pi with Alpine Linux
* How to do it [YouTube AdGuard Home Play List](https://www.youtube.com/playlist?list=PLJLtDhjIXxVXg9R7xpWRgCXFSWbQjPc8R)

References:
* [AlpineLinux](https://alpinelinux.org)
* [AdGuard](https://adguard.com/en/welcome.html)

## 50 Buck's full Arch Linux Computer on a Pi
* [Introduction Video](https://youtu.be/lvnJa0r-8R8)
* Install Arch Linux in a Rapberryp Pi Zero 2W

This €50 beast is the ultimate playground for mastering Linux. Installing a legendary distro like Arch Linux on it is basically the digital version of a black belt initiation.
Think about it: if you can get it purring on a Pi Zero 2, you can pretty much run it on a smart toaster or a vintage calculator. If it has a heartbeat, it can run Arch Linux ! ;)
  
| Item               | Value Euros   |  Buy on Amazon          |
| ------------------ | ------------- | ----------------------- |
| Pi Zero 2W         | 23 €          | [https://amzn.to/496J5FM](https://amzn.to/496J5FM) |
| SD Card            | 7 €           | [https://amzn.to/3MEs3WM](https://amzn.to/3MEs3WM) | 
| Mini Keyboard      | 9 €           | [https://amzn.to/454jmey](https://amzn.to/454jmey) |
| Micro USB to USB A | 5 €           | [https://amzn.to/4jcOoal](https://amzn.to/4jcOoal) |
| Micro HDMI to HDMI | 6 €           | [https://amzn.to/4jcOoal](https://amzn.to/3XQFZ2g) |
| Total              | 50 €          |                                                    |

### Create system for first boot [video 1 - First Boot](https://youtu.be/OIpU-rj6bvY)
#### Create partions
Using fdisk, create two partitions in the Micro SD
* 1 - Create first primary partition, with 1Gbyte and fat 32, for boot;
* 2 - Create second primary partition, with the rest of the space in ext4, for root.
#### Format partitions
* 1 - Format first partition with ** makefs.vfat /dev/"first partition" **;
* 2 - Format second partion with ** makefs.ext4 /dev/"second aprtiton" **.
#### Download system from [Arch Linux Arm](https://archlinuxarm.org)
* wget http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-aarch64-latest.tar.gz
#### Create Systen to boot
* 1 - Create a folder with two subfolders root and boot;
...bash
  mkdir -p rpi_project/{root,boot}
...
* 2 - Mount frst partition in boot and second in root;
* 3 - Move your tar file to the root folder;
* 3 - Extract the tar file and delete the tar (you dont need it anymore);
* 4 - Move all files from root/boot to the boot;
* 5 - Correct the fstab to mount the /boot (first partition) and / (second partition);
* 6 - unmout ./boot and ./root;

### First Boot [video 2 - Configs](https://youtu.be/f7ocAijm5BM)
Enter with root user. For Arch linux ARM the password is root.

* 1 - Get rid of the bug with the Broadcom WIFI with wpa_supplicant
 ```bash
echo "options brcmfmac feature_disable=0x82000" > /etc/modprobe.d/brcmfmac.conf
reboot
```
* 2 - Create a autentication config file for the wpa_supplicant
```bash
wpa_passphrase "your SSID" "your password" > /etc/wpa_supplicant/wpa_supplicant.conf
```
* 3 - Connect the WIFI and get an IP from router
```bash
wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf
dhcpcd
```
* 4 - Update keys of Arch Linux Arm
```bash
pacman-key --init
pacman-key --populate archlinuxarm
```
* 5 - Update and upgrade the system and install some apps
```bash
pacman -Syu htop fastfetch vim
```
### General configs and regional settings [video 3 - Remote general configs](https://youtu.be/pCKzU1uMee0)
Now we area going to make the 50 bucks pc start with all correct stuff 

* 1 - Start your network every time in the init system in Arch Linux the systemd
```bash
cd /etc/wpa_supplicant/
mv wpa_supplicant.conf wpa_supplicant-wlan0.conf
systemctl enable wpa_supplicant@wlan0.service
systemcrl enable dhcpcd
```
* 2 - Set local time the example is for [Azores](https://www.visitazores.com/en) and Portuguese
```bash
ln -sf /usr/share/zoneinfo/Atlantic/Azores /etc/localtime
timedatectl
echo pt_PT.UTF-8 UTF-8 > /etc/locale.gen
locale-gen
echo LANG=pt_PT.UTF-8 > /etc/locale.conf
echo KEYMAP=pt-latin1 > /etc/vconsole.conf
localectl
```
* 3 - Some more tweaks and software
 
Edit with su the /etc/pacman.conf and uncoment #Color and add ILoveCandy ( ;) )
Install basic tools to build Arch Linux packages and sudo as dependency
```bash
pacman -S base-devel
```
Uncoment the group wheel in the file */etc/sudoers*
exit from su, now you can use sudo
```bash
sudo pacman -S git river-classic fuzzel foot
```
Clone my configs
```bash
git clone https://github.com/dpnpinto/PintoRpi
```
### A light graphical enviroment for RaspberryPi Zero 2 [video 4 - GUI config](https://youtu.be/IP8EbzXDD3s)

Yeah, let's add some bloat to this beauty. I usually prefer keeping things lean, but hey—people love their eye candy.
This one is implemented in a easy mode way. Just clone the repository cd into it and *bash install.sh*
```bash
git clone https://github.com/dpnpinto/PintoRpi
cd PintoRpi
bash install.sh
```

#### Main software in use
* Windows Manager - River Classic
* Bar for WM - Waybar
* Start Menu - Fuzzel
* Terminar Emulator - Foot
* Browser - Lynx
* File Manager - Yazel
* Editor - Vim

## A nice ZX Spectrum emulator for the 50 buck's PC

* [Video of how to do](https://youtu.be/2ymei21TSM8)

For me, the [ZX Spectrum 48K](https://loadzx.com) was the absolute GOAT (Greatest Of All Time). It was my very first computer—a literal magic box that let me bend code to my will!

Fast forward to today: I've got this $50 micro-computer that was clearly inspired by the Spectrum’s 'affordable-but-scrappy' soul. It might be cheap, but it's got potential. Time to fire up a killer emulator and relive the glory days!

So in honnor to my son and the good old times:

* Spectrum Emulator from Sergio Costas Rodriguez repository - [fbzx](https://gitlab.com/rastersoft/fbzx)
* [50 buck's PC with Arch Linux ;)](##-50-Buck's-full-Arch-Linux-Computer-on-a-Pi)
* Games used for testing from https://worldofspectrum.net
* [Buy a ZX Spectrum from Amazon and support my work](https://amzn.to/3QOEocR)
