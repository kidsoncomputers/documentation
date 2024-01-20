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






#### Config

On first boot:
* Use the Setup wizard to select the following settings:
  * Country: Uganda
  * Language: Ganda
    * These settings will be changed later in order to get software packages in **English**.
  * Timezone: Kampala
  * Use US keyboard: Yes
  * Password: `mwebaza`
  * This screen shows a black border around the desktop: Yes
  * WiFi
    * Join your local WiFi network in order to continue installation
  * Check for updates
    * Raspbian will now update from Internet repos
    * **This will take several minutes**
    * **Sometimes this update will fail if update servers are not reachable; we'll update packages again later**
    * Restart
 
On second boot:
* Switch language back to **English**:
  * (Most software packages are not translated into Ganda, so we'll use English instead ...)
  * Click Menu, "Entegeka", Raspberry Pi Configuration, Localisation, Set Locale ...
  * Change Language to `en (English)`
  * Change Country to `ZM (Zambia)`
  * Click OK twice
  * Reboot

On third boot:
* Re-check for updated packages:
  * Menu, Preferences, Add/Remove Software
  * Options, Refresh Package Lists
  * Options, Check for Updates
  * If any updates are found:
    * Install Updates
    * When prompted for username and password, use:
      * Identify:  `pi`
      * Password:  `mwebaza`
* Restart:
  * Menu, Shutdown, Reboot

On fourth boot:
* Start **Web Browser** (Menu, Internet, Chromium)
  * Select "No thanks" when prompted to login to Google
  * Close the Adobe Flash Player tab
  * Go to www.mwebaza.org to verify WiFi/network connectivity
  * Reboot

