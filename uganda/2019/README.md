## Kids on Computers / Mwebaza Foundation
Jul - Aug 2019

----
### Lab Overview
* 3 computer labs
  * 15 Raspberry Pi Student Workstations per lab
  * 1 Raspberry Pi Media Server per lab

----
### Raspberry Pi Setup - Student Workstations

#### [Unboxing and Physical Setup](unboxing-and-physical-setup.md)

#### Software Installation
A Raspberry Pi can be installed with KoC/Mwebaza packages and customizations using a pre-built image, or by following manual steps.

##### Pre-built KoC/Mwebaza Image
  1. Download compressed .img file
  1. Uncompress
  1. Use [Etcher or other software](https://www.raspberrypi.org/documentation/installation/installing-images/README.md) to write the .img file to a new SD Card

##### Manual Steps
To prepare a workstation for KoC/Mwebaza labs from scratch, follow the steps below. This should result in the same installation as the pre-built image above.
  1. [Operating System Setup (Raspbian)](operating-system-setup-raspbian.md) - Install base operating system
  1. [Software Package Installation](software-package-installation.md) - Downloads and installs software packages (may take several hours, depending on Internet connection)
  1. [KoC/Mwebaza Customization](koc-mwebaza-customization.md) - Downloads some background images and other customizatios
  1. Reboot
  1. Right-click desktop, choose **Desktop Preferences**, **Desktop**, **Picture**, then select a background image from `pi/Backgrounds` folder
  1. Turn off bluetooth (save power)
    1. Click bluetooth icon at top left, choose **Turn off Bluetooth**
    
Once a workstation is fully installed, a "clone" image can be created and used for easy install of other workstations. Follow the steps found here:
  * https://medium.com/platformer-blog/creating-a-custom-raspbian-os-image-for-production-3fcb43ff3630


----
### Internet in a Box Media Server
Start with a standard Raspberry Pi kit, but use a 128GB SD card.
  1. Follow [Unboxing and Physical Setup]((unboxing-and-physical-setup.md)) guide
  1. [Install Raspbian](operating-system-setup-raspbian.md)
  1. (coming soon)

