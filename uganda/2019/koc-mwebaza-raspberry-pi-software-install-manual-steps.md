# Raspberry Pi Software Install - Manual Steps

To prepare a workstation for KoC/Mwebaza labs from scratch, follow the steps below. This should result in the same installation as the pre-built image above.
  1. [Operating System Setup (Raspbian)](operating-system-setup-raspbian.md) - Install base operating system
  1. [Software Package Installation](software-package-installation.md) - Downloads and installs software packages (may take several hours, depending on Internet connection)
  1. [KoC/Mwebaza Customization](koc-mwebaza-customization.md) - Downloads some background images and other customizatios
  1. Reboot
  1. Right-click desktop, choose **Desktop Preferences**, **Desktop**, **Picture**, then select a background image from `pi/Backgrounds` folder
  1. Turn off bluetooth (save power): Click bluetooth icon at top left, choose **Turn off Bluetooth**

Following these steps results in a running Raspberry Pi image that uses about 8GB of the SD Card.

----
## Clone Image
Once a workstation is fully installed, a "clone" image can be created and used for easy install of other workstations.

These steps work best on a Linux host, although they may be possible on other OSes.

### Clone Raspberry Pi SD Card to .img file
Follow the steps found here to copy the filesystem off of the SD card, then compress it make the image:
  * https://medium.com/platformer-blog/creating-a-custom-raspbian-os-image-for-production-3fcb43ff3630

### Compress
Zip the file with maximum compression

In this example, an 8GB `.img` file is compress to a 4GB `.img.zip` file:
```
$ ll koc-mwebaza-2019-v1.img
-rw-r--r--. 1 root root  8288584192 May 30 20:11 koc-mwebaza-2019-v1.img
$ zip -9 koc-mwebaza-2019-v1.img.zip koc-mwebaza-2019-v1.img
  adding: koc-mwebaza-2019-v1.img (deflated 51%)
$ ll koc-mwebaza-2019-v1.img.zip
-rw-rw-r--. 1 tate tate  4054356734 May 30 20:49 koc-mwebaza-2019-v1.img.zip
```

### Upload the Image to kidsoncomputers.org
With a .img file (and .zip) created it can optionally be uploaded to [kidsoncomputers.org/data](https://www.kidsoncomputers.org/data/) for sharing with others.  This may take several hours, depending on Internet speed.

Also, to write to this location via `scp`, you'll need to get credentials. Check with a KoC Board Member (email: board@kidsoncomputers.org) if you need the credentials.

```
$ rsync -av --progress --partial \
  koc-mwebaza-2019-v1.img.zip \
  kochosting@kidsoncomputers.org:/home/kochosting/kidsoncomputers.org/web/data/projects/Uganda2019/

kochosting@kidsoncomputers.org's password: 
sending incremental file list
koc-mwebaza-2019-v1.img.zip
  4,054,356,734 100%  631.34kB/s    1:44:31 (xfr#1, to-chk=0/1)

sent 4,055,346,688 bytes  received 35 bytes  645,601.64 bytes/sec
total size is 4,054,356,734  speedup is 1.00
```
