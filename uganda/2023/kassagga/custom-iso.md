
# Custom Ubuntu Image

Instructions on how to create a custom Ubuntu ISO, based on Edubuntu.

## What You'll Need

- A computer running Ubuntu (not a virtual machine)
  - [ISO for Ubuntu 22.04.2 Desktop](https://releases.ubuntu.com/22.04.2/ubuntu-22.04.2-desktop-amd64.iso)
- Internet connection
- Edubuntu ISO
  - [ISO for Edubuntu 23.04 Beta Desktop](https://cdimages.ubuntu.com/edubuntu/releases/23.04/beta/edubuntu-23.04-beta-desktop-amd64.iso)

## Steps
- Get Ubuntu running on hardware (not a VM)
- Install [Cubic](https://github.com/PJ-Singh-001/Cubic/wiki/Start-Page)
```
sudo apt-add-repository universe
sudo apt-add-repository ppa:cubic-wizard/release
sudo apt update
sudo apt install --no-install-recommends cubic
```
- Run Cubic


----
## OLD NOTES

- Name: Kids on Computers
- Computer Name: koc-workstation
- Username: koc
- Password: koc
- Download updates
- Install 3rd Party
- Timezone: Kampala

Reboot

Configure
- No cloud services ("Skip")
- No, do not send info to Canonical
- Location services off
- Install updates again

Reboot

Install additional packages
- Open terminal
```
mkdir .koc_install
cd .koc_install
# Download package list and installer
wget https://github.com/kidsoncomputers/documentation/raw/master/uganda/2023/kassagga/packagelist.txt
wget https://github.com/kidsoncomputers/documentation/raw/master/uganda/2023/kassagga/install-packages.sh

# Download background image
wget https://github.com/kidsoncomputers/documentation/raw/master/uganda/2023/kassagga/kph-uganda-bird-koc.png

# Install add'l packages
bash ./install-packages.sh packagelist.txt

# Copy background image to ~koc/Pictures/Backgrounds/
mkdir ~/Pictures/Backgrounds/
cp kph-uganda-bird-koc.png ~/Pictures/Backgrounds
```

Set background
- Right-click desktop
- Change Background
- Add Picture... (select file)
- Select the new picture
- Move the Home shortcut icon to the upper left

Download some docsets in Zeal
- Open Zeal
- Tools, Docsets...
- Select Javascript, Python3, HTML, CSS


