## Operating System Setup (Raspbian)

### Download Raspbian February 2020

- Download ZIP file for **Raspbian Buster with desktop and recommended software**, February 2020
  - https://www.raspberrypi.org/downloads/raspbian/
  - Download size should be approximately 2.5GB.

### Write Raspbian Image to SD Card

- After downloading, unzip and install to a 32GB SD card following instructions (Linux, Windows, MacOS) here:
  - https://www.raspberrypi.org/documentation/installation/installing-images/README.md

### Insert SD Card into Pi and Boot

- First boot will take a few minutes

#### Config

On first boot:

- Use the Setup wizard to select the following settings:
  - Country: Uganda
  - Language: Ganda
    - These settings will be changed later in order to get software packages in **English**.
  - Timezone: Kampala
  - Use US keyboard: Yes
  - Password: `muwanguzi`
  - This screen shows a black border around the desktop: Yes
  - WiFi
    - Join your local WiFi network in order to continue installation
  - Check for updates
    - Raspbian will now update from Internet repos
    - **This will take several minutes**
    - **Sometimes this update will fail if update servers are not reachable; we'll update packages again later**
    - Restart

On second boot:

- Switch language back to **English**:
  - (Most software packages are not translated into Ganda, so we'll use English instead ...)
  - Click Menu, "Entegeka", Raspberry Pi Configuration, Localisation, Set Locale ...
  - Change Language to `en (English)`
  - Change Country to `ZM (Zambia)`
  - Click OK twice
  - Reboot

On third boot:

- Re-check for updated packages:
  - Menu, Preferences, Add/Remove Software
  - Options, Refresh Package Lists
  - Options, Check for Updates
  - If any updates are found:
    - Install Updates
    - When prompted for username and password, use:
      - Identify: `pi`
      - Password: `muwanguzi`
- Restart:
  - Menu, Shutdown, Reboot

On fourth boot:

- Start **Web Browser** (Menu, Internet, Chromium)
  - Select "No thanks" when prompted to login to Google
  - Close the Adobe Flash Player tab
  - Go to www.kidsoncomputers.org to verify WiFi/network connectivity
  - Reboot
