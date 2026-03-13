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

### Create partions
Using fdisk, create two partitions in the Micro SD
* 1 - Create first primary partition, with 1Gbyte and fat32, for boot;
* 2 - Create second primary partition, withe rest of the space in ext4, for root.
### Format partitions
* 1 - Format first partition with ** makefs.vfat /dev/"first partition" **;
* 2 - Formata second partion with ** makefs.ext4 /dev/"second aprtiton" **.
### Download system from [Arch Linux Arm](https://archlinuxarm.org)
* wget http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-aarch64-latest.tar.gz


## A nice ZX Spectrum emulator
* coming Soon
