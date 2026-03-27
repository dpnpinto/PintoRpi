# Nice [Raspberry Pi](https://www.raspberrypi.com) projects for you
## How to Install [Alpine Linux](https://alpinelinux.org) on a Pi
* How to do it [YouTube Alpine Linux Play List](https://www.youtube.com/playlist?list=PLJLtDhjIXxVUTWNq97O71LMt2KICNkpve)

## [AdGuard](https://adguard.com/en/welcome.html) on a Pi with Alpine Linux
* How to do it [YouTube AdGuard Home Play List](https://www.youtube.com/playlist?list=PLJLtDhjIXxVXg9R7xpWRgCXFSWbQjPc8R)

## 50 Buck's full Arch Linux Computer on a Pi
* Install Arch Linux in a Rapberryp Pi Zero 2W

This €50 beast is the ultimate playground for mastering Linux. Installing a legendary distro like Arch Linux on it is basically the digital version of a black belt initiation.
Think about it: if you can get it purring on a Pi Zero 2, you can pretty much run it on a smart toaster or a vintage calculator. If it has a heartbeat, it can run Arch! ;)
  
| Item               | Value Euros   |  Buy on Amazon          |
| ------------------ | ------------- | ----------------------- |
| Pi Zero 2W         | 23 €          | [https://amzn.to/496J5FM](https://amzn.to/496J5FM) |
| SD Card            | 7 €           | [https://amzn.to/3MEs3WM](https://amzn.to/3MEs3WM) | 
| Mini Keyboard      | 9 €           | [https://amzn.to/454jmey](https://amzn.to/454jmey) |
| Micro USB to USB A | 5 €           | [https://amzn.to/4jcOoal](https://amzn.to/4jcOoal) |
| Micro HDMI to HDMI | 6 €           | [https://amzn.to/4jcOoal](https://amzn.to/3XQFZ2g) |
| Total              | 50 €          |                                                    |

### Create system for first boot (video 1)
#### Create partions
Using fdisk, create two partitions in the Micro SD
* 1 - Create first primary partition, with 1Gbyte and fat 32, for boot;
* 2 - Create second primary partition, with the rest of the space in ext4, for root.
#### Format partitions
* 1 - Format first partition with ** makefs.vfat /dev/"first partition" **;
* 2 - Formata second partion with ** makefs.ext4 /dev/"second aprtiton" **.
#### Download system from [Arch Linux Arm](https://archlinuxarm.org)
* wget http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-aarch64-latest.tar.gz
#### Create Systen to boot
* 1 - Create a folder with two subfolders root and boot;
* 2 - Mount frst partition in boot and second in root;
* 3 - Move your tar file to the root folder;
* 3 - Extract the tar file and delete the tar (you dont need it anymore);
* 4 - Move all files from root/boot to the boot;
* 5 - Correct the fstab to mount the /boot (first partition) and / (second partition);
* 6 - unmout ./boot and ./root;

### First Boot (video 2)
Enter with root user. For Arch linux ARM the password is root.

* 1 - Get rid of the bug with the Broadcom WIFI with wpa_supplicant
 ```bash
echo "options brcmfmac feature_disable=0x82000" > /etc/modprobe.d/brcmfmac.conf
reboot
```
* 2 - Create a autentication config file for the wpa_suplicant
```bash
wpa_passphrase "your SSID" "your password" > /etc/wpa_supplicant/wpa_supplicant.conf
```
* 3 - Conect the WIFI and get an IP from router
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
### General configs and regional settings (video 3)
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
echo KEYMAP=pt-latin1 >> /etc/vconsole.conf
localectl
```
* 3 - Some more tweaks and software
 
Edit with su the /etc/pacman.conf and uncoment #Color and add ILoveCandy ( ;) )
Install sudo
```bash
pacman -S sudo
```
uncoment the grup wheel in the file */etc/sudoers*
exit from su, now you can use sudo
```bash
sudo pacman -S git river fuzzel foot swaybg
```
Clone my configs
```bash
git clone https://github.com/dpnpinto/PintoRpi
```
### A graphical enviroment for RaspberryPi (video 4)

...

## A nice (ZX Spectrum)[https://worldofspectrum.org] emulator
For me, the (ZX Spectrum 48K)[https://worldofspectrum.org] was the absolute GOAT (Greatest Of All Time). It was my very first computer—a literal magic box that let me bend code to my will!

Fast forward to today: I've got this $50 micro-computer that was clearly inspired by the Spectrum’s 'affordable-but-scrappy' soul. It might be cheap, but it's got potential. Time to fire up a killer emulator and relive the glory days!

* coming Soon
