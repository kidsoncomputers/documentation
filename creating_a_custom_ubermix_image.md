# Overview

# Install Steps

## Download/Install Ubermix 2.2L

* Download ubermix-key-2.2L.img
  http://ubermix.org/files.html
* Using a 16+GB USB flash drive, make an installation key for Ubermix by following these instructions: 
  http://ubermix.org/download.html
  
## Install Ubermix 2.2L

* Insert and boot from the USB Key 
* You may need to alter BIOS settings to boot from USB. 
* You should eventually see a menu with options 1­5 listed. It not: 
  * Problems booting from Ubermix Install Key: 
    If you initially see the purple screen with two icons on the bottom (like this: http://i.stack.imgur.com/GtEi5.png), but then get a blank screen, try booting again and hit Escape when you see the purple screen. Then <Enter> for English. Then F6 for advanced options. I tried “nodmraid” and it fixed a problem with a Dell Inspiron) 
 
* Install Menu 
  You should see a menu with options 1-5.
 
* Choose Option 2 - Advanced 
  Enter 16 for the BASE SYSTEM size
  Enter 4 for the USER CHANGES size 

* After a few minutes, you should be able to reboot without the USB and get Ubermix 2.2L 
 
## Prepare For Customization

* Reboot laptop or VM 
* Press Esc 
* When "Normal Boot" menu option appears, press "e" 
  * Cursor to the last line where it says "aufs". Change "aufs" to "generic"
  * Ctrl-x 
* System will boot with the Default System in read-write mode. 


