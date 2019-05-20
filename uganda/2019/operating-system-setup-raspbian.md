## Operating System Setup (Raspbian)

### Download Raspbian April 2019

* Download ZIP file for **Raspbian Stretch with desktop and recommended software**, April 2019
  * https://www.raspberrypi.org/downloads/raspbian/
  * Download size should be approximately 1.9GB.

### Write Raspbian Image to SD Card

* After downloading, unzip and install to a 32GB SD card following instructions (Linux, Windows, MacOS) here:
  * https://www.raspberrypi.org/documentation/installation/installing-images/README.md

### Insert SD Card into Pi and Boot

* First boot will take a few minutes 

#### Config

* On first boot, select the following settings:
  * Country: Uganda
  * Language: Ganda
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
 
 * On second boot,
   * Re-check for updated packages:
     * Menu, Preferences, Add/Remove Software
     * Options, Check for Updates
     * Install Updates
     * When prompted for username and password, use:
       * Identify:  `pi`
       * Password:  `mwebaza`
   * Restart:
     * Menu, Shutdown, Reboot
       
     
 * Start **Web Browser** (Chromium)
   * Select "No, thank you" when prompted to login
   * Close the Adobe Flash Player tab
   
    
  
### Verify installation

:exclamation: :hourglass_flowing_sand: (work in progress)

* WiFi 
* ...?
