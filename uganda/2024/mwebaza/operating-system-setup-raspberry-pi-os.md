## Operating System Setup (Raspbian)

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


#### Create Bigger Swap File

* The default swap file size with RPi OS is 100MB ... [too small](https://www.bitpi.co/2015/02/11/how-to-change-raspberry-pis-swapfile-size-on-rasbian)
* Open a terminal and run the following commands to increase the swap file to 2048MB:
* `sudo vi /etc/dphys-swapfile`
* Look for line that contains `CONF_SWAPSIZE`, change value to 2048
* Save, quit
* `sudo /etc/init.d/dphys-swapfile stop`
* `sudo /etc/init.d/dphys-swapfile start`


#### Software Updates

* Join wifi
* Open terminal, apply any software updates:
  * `sudo apt update`
  * `sudo apt upgrade -y`
  * password: `mwebaza`
* Reboot


#### Software Package Installation

This may take several hours, depending on Internet connection speed

* Install Raspbian first
* Connect to WiFi
* Open a terminal and run the following:
```
mkdir -p koc/install
```

* Using web browser, download the following files into `koc/install` folder created in the last step:
  * https://github.com/kidsoncomputers/documentation/raw/master/uganda/2024/mwebaza/koc-packages.sh
  * https://github.com/kidsoncomputers/documentation/raw/master/uganda/2019/mwebaza/install-packages.txt
  * https://github.com/kidsoncomputers/documentation/raw/master/uganda/2019/mwebaza/remove-packages.txt

* Return to the terminal and run:
```
cd koc/install
chmod u+x koc-packages.sh
./koc-packages.sh
```


#### Set Desktop Backgound and Bookmarks


* Start **Web Browser** (Menu, Internet, Chromium)
  * Set home page to `http://box`:
    * Go to Chromium Settings
    * Search for "on start-up"
    * Choose "Open a specific page or set of pages"
    * Enter `http://box`


