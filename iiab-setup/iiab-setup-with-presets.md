# Internet In A Box Setup using Preset Content Collections

October, 2021<br />

This is an alternative to other instructions for setting up IIAB found in this documentation. It requires a preconfigured set of preset files, see the presets directory in this folder.

## Raspberry Pi Base Image

The IIAB base image has most IIAB software installed, but no content. You can obtain this base in two ways.

### 1. Use a Prebuilt Image

* Download a suitable base from https://archive.org/details/internetinabox
* Choose List icon and Date Archived to get a list in chronological order)
* Select an image that says Content Ready
* In general take the most recent such image
* Write the downloaded image to an sd card, insert into Raspberry Pi, and boot.

### 2. Build Your Own Image

* Write a RaspiOS image to an sd card, insert into Raspberry Pi, and boot.
* Follow the instructions in https://github.com/iiab/iiab/wiki to install IIAB
 * `curl d.iiab.io/install.txt | sudo bash`
* IIAB Setup Options:
  * iiab-admin password:  `g0adm1n`
  * Choose **1 - MIN-sized**

### Update the IIAB Server Softare

* DO NO DO THIS unless advised to by an IIAB developer
* cd /opt/iiab/iiab
* git pull
* ./iiab-install --reinstall

### Update the IIAB Admin software

* This may or may not be necessary
* Ask IIAB developers
* cd /opt/iiab/iiab-admin-console
* git pull
* ./install

## Add Preset Content Collection

* Start Raspberry Pi
* Connect to Internet, using ethernet if available
* ssh into the rpi
* cp a desired directory from the presets directory in this folder, such as mwebaza-2021, into /opt/admin/cmdsrv/presets/ on the Raspberry Pi
* Using a browser connect to http:/box/admin over the hotspot or http:/<server ip>/admin on your lan
* Login
* Click Install Content
* You should be in the Quick Pick option and see a list of preset Content Collections.
* Select the one you copied and click Install Selected Collection
* Follow the progress in the Utilities -> Job Status menu option
* THIS WILL LIKELY TAKE HOURS

## Backup, Further Customization, and Testing

Follow the instructions for individual deployments elsewhere in the documentation.
