# Internet In A Box Setup - Ubuntu

December 2022

These instructions describe how to install [Internet in a Box](https://internet-in-a-box.org/) on Ubuntu 22.04.

## Prerequisites
- A laptop or desktop computer, preferrably with at least 8GB RAM and 500GB+ disk
- Internet connection

## Steps

### 1. Download and Install Ubuntu 22.04.1 LTS

* Download the .iso file from [Ubuntu](https://releases.ubuntu.com/jammy/). Download size is approx. 3.8GB.
* Write the .iso file to a USB drive (4GB+) using [Etcher](https://www.balena.io/etcher/) or other disk utility:
  * [Windows](https://ubuntu.com/tutorials/create-a-usb-stick-on-windows)
  * [Linux](https://ubuntu.com/tutorials/create-a-usb-stick-on-ubuntu)
  * [MacOS](https://ubuntu.com/tutorials/create-a-usb-stick-on-macos)
* Install Ubuntu.  Additional instructions [here](https://ubuntu.com/tutorials/install-ubuntu-desktop)
  * Can be installed in English or other language appropriate for the target environment

### 2. Additional Ubuntu Setup
* After initial Ubuntu set up is complete, connect to the Internet via ethernet or WiFi before proceeding.
* Update any outdated packages:
```
sudo apt-get update && sudo apt-get upgrade
```

* Install some packages we'll need later:
```
sudo apt-get install openssh-server net-tools curl
```
* In order to connect to this host from another computer via SSH, install/enable SSH and get its IP address. Open a terminal (`Crtl + Shift + T`):
```
# Install open-ssh and net-tools
sudo apt-get install openssh-server net-tools

# Enable ssh server
sudo systemctl enable ssh --now

# Start ssh server
sudo systemctl start ssh

# Get IP address
hostname -I
```

### 3. Download Internet in a Box

* Login to Ubuntu
* Open a Terminal session via SSH or `Ctrl + Shift + T` on the desktop
* Follow the instructions in https://github.com/iiab/iiab/wiki to install IIAB
 * `curl d.iiab.io/install.txt | sudo bash`
* IIAB Setup Options:
  * iiab-admin password:  `g0adm1n`
  * Choose **1 - MIN-sized**
* Follow prompts to update packages and reboot
* Re (and re-run) `sudo iiab` multiple times until it completes without errors.
 

At this point, IIAB is set up with basic structure, but only minimal content.

You should be able to connect to the IIAB server using a browser at:
* http://box (from Ubuntu)
* http://<ip-address> (from another computer on same network)

Go to the next step to install content.


### 4. Add IIAB Configuration Preset

IIAB comes with a few preset configurations that are commonly used.
 
Kids on Computers has a few additional presets for specific schools.
 
* Follow instructions at [KoC IIAB Presets](https://github.com/kidsoncomputers/documentation/tree/master/iiab-setup/presets/) to install a preset config.
* Using a browser connect to http:/box/admin over the hotspot or http:/<server ip>/admin on your lan
* Login
* Click Install Content
* You should be in the Quick Pick option and see a list of preset Content Collections.
* Select the one you copied and click Install Selected Collection
* Follow the progress in the Utilities -> Job Status menu option
* THIS WILL LIKELY TAKE HOURS

## Backup, Further Customization, and Testing

