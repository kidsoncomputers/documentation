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
* Install Ubuntu Server.  Additional instructions [here](https://ubuntu.com/tutorials/install-ubuntu-desktop)
  * Can be installed in English or other language appropriate for the target environment
  * When creating a user account, be sure to grant Administrator permissions.  Remember the username/password, as these credentials will be needed later to install IIAB.

### 2. Download Internet in a Box

* Login to Ubuntu Server
* Open a Terminal using any of these methods:
  * Connect to the Ubuntu Server from a different computer via [SSH](https://help.ubuntu.com/community/SSH/OpenSSH/ConnectingTo)
  * or, when logged into graphical user interface: `Ctrl + Shift + T`
  * or, when logged into graphical user interface: Right-click the desktop, choose 
* Follow the instructions in https://github.com/iiab/iiab/wiki to install IIAB
 * `curl d.iiab.io/install.txt | sudo bash`
* IIAB Setup Options:
  * iiab-admin password:  `g0adm1n`
  * Choose **1 - MIN-sized**

----

### 3. Add IIAB Configuration Preset

* Select a preset configuration from here (TBD)
* Create a directory on the Ubuntu server to hold the preset files.  For example, if your preset is "MyIIAB2022":
  * `mkdir /opt/admin/cmdsrv/presets/MyIIAB2022/`
* `cp` the contents of the presets directory in this folder
* Using a browser connect to http:/box/admin over the hotspot or http:/<server ip>/admin on your lan
* Login
* Click Install Content
* You should be in the Quick Pick option and see a list of preset Content Collections.
* Select the one you copied and click Install Selected Collection
* Follow the progress in the Utilities -> Job Status menu option
* THIS WILL LIKELY TAKE HOURS

## Backup, Further Customization, and Testing

