
# KoC Custom Image for Mwebaza 2024

Follow these steps to create a customized version of Raspberry Pi OS for
use in KoC Labs in Uganda.  The labs have Raspberry Pi 3B hardware.

----
## Operating System Setup (Raspberry Pi OS)

### Download Raspberry Pi OS

* Download ZIP file for **Raspberry Pi OS with desktop and recommended software**
  * https://www.raspberrypi.com/software/operating-systems/
  * As of Jan 2024, this file is:
    * Release date: December 5th 2023
    * System: 32-bit
    * Kernel version: 6.1
    * Debian version: 12 (bookworm)
    * Size: 2,602MB


### Write RPiOS Image to SD Card

* Use [Raspberry Pi Imager](https://www.raspberrypi.com/software/) to install the downloaded file to a 8GB (or larger) SD card
* Options:
  * Raspberry Pi Device: Raspberry Pi 3 (for Mwebaza Labs created in 2019, which have RPi 3B)
  * Operating System: Use Custom; browse to downloaded file
  * Storage: Select SD card inserted into your computer
* OS Customization:
  * Set hostname: `mwebaza-pi`
  * Set username and password:
    * Username: `pi`
    * Password: `mwebaza`
  * Configure wireless LAN:
    * SSID: `Internet in a Box`
    * Password: (none)
  * Set locale settings:
    * Time zone: `Africa/Kampala`
    * Keyboard layout: `us`
* Write the new OS to SD card


### Insert SD Card into Pi and Boot

* First boot will take a few minutes 


----
## KoC Customizations and Packages

### Create Bigger Swap File

* The default swap file size with RPi OS is 100MB ... [too small](https://www.bitpi.co/2015/02/11/how-to-change-raspberry-pis-swapfile-size-on-rasbian)
* Open a terminal and run the following commands to increase the swap file to 2048MB:
* `sudo vi /etc/dphys-swapfile`
* Look for line that contains `CONF_SWAPSIZE`, change value to 2048
* Save, quit
* `sudo /etc/init.d/dphys-swapfile stop`
* `sudo /etc/init.d/dphys-swapfile start`
* Reboot


#### Software Updates

* Join wifi
* Open terminal, apply any software updates:
  * `sudo apt update`
  * `sudo apt upgrade -y`
  * If needed, the password for user `koc` is: `mwebaza`
* Reboot


#### Software Package Installation

In this section, we install several educational software packages and games, plus removes some
RPiOS packages that don't run very well on Pi 3Bs. This may take several hours, depending on
Internet connection speed.

* Join WiFi
* Open a terminal and run the following:
```
mkdir -p koc/install
```

* Using web browser, download the following files into `koc/install` folder created in the last step:
  * https://raw.githubusercontent.com/kidsoncomputers/documentation/master/uganda/2024/mwebaza/koc-packages.sh
  * https://raw.githubusercontent.com/kidsoncomputers/documentation/master/uganda/2024/mwebaza/install-packages.txt
  * https://raw.githubusercontent.com/kidsoncomputers/documentation/master/uganda/2024/mwebaza/remove-packages.txt

* Return to the terminal and run:
```
cd koc/install
chmod u+x koc-packages.sh
./koc-packages.sh
```



#### Set Desktop Backgound and Bookmarks

Other customizations to prepare the OS image for use in an offline KoC lab environment.

* Start **Web Browser** (Menu, Internet, Chromium)
  * Set home page to `http://box` (Internet in a Box media server which is available in each Mwebaza lab):
    * Go to Chromium Settings
    * Search for "on start-up"
    * Choose "Open a specific page or set of pages"
    * Enter `http://box`

* Start Gcompris to download additional content files
  * Upon starting Gcompris, it should prompt for downloading some content
  * Also open Settings and look for options to download other content

* Download wallpapers/background images, then set one to be the desktop background:
  * Open a terminal and run the following:
```
mkdir -p koc/install
```
  * Using web browser, download the following file into `koc/install` folder created in the last step:
    * https://raw.githubusercontent.com/kidsoncomputers/documentation/master/uganda/2024/mwebaza/backgrounds-koc-mwebaza-2024.sh
  * Return to the terminal and run:
```
cd koc/install
chmod u+x backgrounds-koc-mwebaza-2024.sh
./backgrounds-koc-mwebaza-2024.sh
```


#### Change background

* Right-click desktop, choose **Desktop Preferences**, **Desktop**, **Picture**, then select a background image from `Backgrounds/Mwebaza/` folder in the user's home directory.
* Customize the stretch/layout of the picture as well as desktop background to match desired appearance


## Create Image File from SD Card

* Follow [clone-sd-card](./clone-sd-card.md) instructions to make a backup copy of this custom OS for distribution.