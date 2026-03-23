# Raspberry Pi easy projetcs for you

## How to Install Alpine Linux on a Pi
* How to do it [YouTube Alpine Linux Play List](https://www.youtube.com/playlist?list=PLJLtDhjIXxVUTWNq97O71LMt2KICNkpve)

## Ad Guard on a Pi with Alpine Linux
* How to do it [YouTube AdGuard Home Play List](https://www.youtube.com/playlist?list=PLJLtDhjIXxVXg9R7xpWRgCXFSWbQjPc8R)

## 50 Buck's full Arch Linux Computer on a Pi
* Install Arch Linux in a Rapberryp Pi Zero 2W
  
| Item               | Value Euros   |  Buy on Amazon          |
| ------------------ | ------------- | ----------------------- |
| Pi Zero 2W         | 23 €          | [https://amzn.to/496J5FM](https://amzn.to/496J5FM) |
| SD Card            | 7 €           | [https://amzn.to/3MEs3WM](https://amzn.to/3MEs3WM) | 
| Mini Keyboard      | 9 €           | [https://amzn.to/454jmey](https://amzn.to/454jmey) |
| Micro USB to USB A | 5 €           | [https://amzn.to/4jcOoal](https://amzn.to/4jcOoal) |
| Micro HDMI to HDMI | 6 €           | [https://amzn.to/4jcOoal](https://amzn.to/3XQFZ2g) |
| Total              | 50 €          |                                                    |

### Create system for first boot
#### Create partions
Using fdisk, create two partitions in the Micro SD
* 1 - Create first primary partition, with 1Gbyte and fat32, for boot;
* 2 - Create second primary partition, withe rest of the space in ext4, for root.
#### Format partitions
* 1 - Format first partition with ** makefs.vfat /dev/"first partition" **;
* 2 - Formata second partion with ** makefs.ext4 /dev/"second aprtiton" **.
#### Download system from [Arch Linux Arm](https://archlinuxarm.org)
* wget http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-aarch64-latest.tar.gz
#### Create Systen to boot
* 1 - Create a folder with two subfolders root and boot;
* 2 - Mount frst partition in boot and second in root;
* 3 - Move your tar file to the root folder;
* 3 - Extract the tar file and detel the tar (you dont need it anymore);
* 4 - Move all files from root/boot to the boot;
* 5 - Correct the fstab to mount the /boot (first partition) and / (second partition);
* 6 - unmout ./boot and ./root;

### First Boot
Enter with root user. For Arch linux ARM the password is root.
 ```bash
echo "options brcmfmac feature_disable=0x82000" > /etc/modprobe.d/brcmfmac.conf
reboot
```
* 2 - Create a autentication config file for the wpa_suplicant
```bash
wpa_passphrase "your SSID" "your password" > /etc/wpa_supplicant/wpa_supplicat.conf
```
* 3 - Conect the WIFI and get an IP from router
```bash
wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicat.conf
dhcpcd
```
* 4 - Update keys of Arch Linux Arm
```bash
pacman-key --init
pacman-key --populate archlinuxarm
```
* 5 - Update and upgarde the system and install some apps
```bash
pacman -Syu htop fastfetch vim
```

## A nice ZX Spectrum emulator
* coming Soon
