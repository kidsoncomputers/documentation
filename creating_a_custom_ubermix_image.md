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

# Customize

## Update

* Connect to the network. If wireless isn't working, use a wired connection. More on this in the next step. 
* Press CTRL+ALT+T to open a terminal window. 
* Update packages:
  ```
   sudo apt­mark hold grub2­common grub­common grub­pc grub­pc­bin 
   sudo apt­get update 
   sudo apt­get upgrade
  ```
* This step can take 10-20 minutes. 
 
## Add Wireless Drivers
* Press CTRL+ALT+T to open a terminal window. 
* Remove the newer broadcom drivers by typing 
  ``` 
  sudo apt­get purge bcmwl-kernel-source 
  ```
  
  Install b43 legacy:
  ```
  sudo apt­get install firmware-b43legacy-installer 
  ```
  
  Install b43:
  ```
  sudo apt­get install firmware­b43­installer 
  ```

* Restart and re-enable read-write mode following "Prepare For Customization" steps above. 
* Continue install with either wired or wireless connection. 
 
## Install Software
* On laptop or VM, connect to http://wiki.kidsoncomputers.org/index.php?title=Packagelist_es
* Copy the list of packages to clipboard 
* Open Activities menu, type Text Editor, paste list of packages into document. Save as /tmp/packagelist_es.txt 
* Open Terminal (Ctrl+Alt+T)
   ```
   cat /tmp/packagelist_es.txt | xargs sudo apt­get -y install
   ```
   
  This will download and install educational packages. May take several hours depending on connection 
speed. 
  Repeat the same command again, to confirm packages are all present: 
  ```
  cat /tmp/packagelist_es.txt | xargs sudo apt­get -y install
  ```
 
* Additional Packages 
  KidsRuby
  ```
  cd /tmp/ 
  wget 'https://s3.amazonaws.com/kidsruby/linux+i686/kidsruby-1.4.0-i686.deb' 
  sudo dpkg -i kidsruby*.deb 
  ``` 

## Customize Desktop
* Download desktop background and copy to backgrounds folder:
  ```
  cd /tmp/ 
  wget http://www.kidsoncomputers.org/data/backgrounds/ubermix-2.2L-koc-es-background.jpg 
  sudo cp ubermix­2.2L-koc-es-background.jpg /usr/share/backgrounds 
  sudo chmod a+rw /usr/share/backgrounds/*
  ```
* Update background 
  * Right-click desktop, choose Change Desktop Background 
  * Click Add... 
  * Navigate to the new file 
  * Select Style: Stretch 

# This format should be fixed.

Regional Formats
Change regional formats by doing the following: 
Click Activities, type “language”. Select Language Support. 
If “The language support is not installed completely” popup is seen, click Install 
Change to the Regional Formats tab 
Select Español (México) 
Click Apply System­Wide 
If prompted for password, enter “password” 
 
Input Methods
Add Spanish keyboard layout settings by doing the following: 
Start Control Center 
Choose Keyboards, then Layouts 
Add .... Mexico, Spanish (Latin America), “Add” 
Select Spanish, and then click “Move Up” 
 
Remove “fcitx” keyboard configuration tool (it conflicts with the normal keyboard selector): 
sudo apt­get remove fcitx* 
After this is done, you should see a small “es” icon in the menu bar near the upper right corner of the screen. 
Clicking this will switch between “es” and “en” keyboard layouts. 
 
Time Zone
Set the timezone for Mexico City (Central Time) by doing the following: 
Click Activities, Type “time” 
Select Time and Date 
Click Unlock 
If prompted, enter “password” 
Change Time Zone to America/Mexico_City 
Click Close 
 
 
Language Packs
Install Spanish Language support by doing the following: 
Click Activities, type “language”. Select Language Support 
If “The language support is not installed completely” popup is seen, click Install 
Still on the Language Support window, drag and drop the “Español (México)” language to the top of the list, above 
“English (United States)”. 
Click “Apply System Wide” 
Password: “password” 
 
 Application Language Selection
Some apps are only available in English. Other apps will automatically start in Spanish 
But a few others can be configured to be in Spanish. For example: 
Click Activities, Education, Tux Typing 
If the menu options are presented in English, do the following to switch to Espanol: 
Options 
Setup Language 
Use arrows until you find and select Espanol. 
(This change will ensure the other similar apps, like Tux Math, will start in Espanol) 
 
 
Reboot 
Restart and re­enable read­write mode following “Prepare For Customization” steps above. 
NOTE: When shutting down Ubermix on Mac Mini, the shutdown hangs. Hold power button to completely 
power off. 
 
 
Apply additional updates
Open a terminal (“Ctrl­Alt­T”) 
Type:  
sudo apt­get update 
sudo apt­get upgrade 
 
Purge package files
Save disk space in the final image by cleaning up the apt cache. Use these commands: 
sudo apt­get clean 
sudo apt­get autoclean 
sudo apt­get autoremove 
Verify
Reboot one more time, but without changing the “aufs” value on the boot command. 
Make sure everything appears to work properly. 
If you see any problems, reboot again, enter “generic” mode, then fix the problems. 
 
 
Create Custom USB Installer
After all customizations are complete, you may now write the new image out to USB key. The new image file will 
require a USB flash drive that is 16GB or larger to proceed. 
 
Prepare USB Key 
Format the 16GB+ USB key with the default Ubermix 2.2L image (approximately 3.1GB). Instructions are here: 
http://ubermix.org/download.html 
 
At this point, the installer partition has less than 1GB of free space. Because our installation image is much larger, 
we must resize the partition. Working on a Linux laptop (I used Fedora 21), do the following: 

 
●
●
●
●
●
●
●
●
●
●
Insert the USB key 
Copy all files from the USB to a folder in your desktop 
○ This includes files like: 
■ 2015.03.24_trusty.2.2L.bld 
■ base_image.gz.aa (2.3GB) 
■ blockcount.dat 
■ ... 
Open a terminal and type: 
○ sudo gparted 
Choose the correct disk (probably /dev/sdb) 
Right click the partition and choose Unmount 
Right click the partition and choose Delete 
Create a new partition: 
○ fat32 
○ size: 12GB 
○ label: UBERMIX 
Click the green checkbox to execute the changes 
Eject the USB, then re­insert 
Copy the ubermix file from your desktop back onto the USB 


