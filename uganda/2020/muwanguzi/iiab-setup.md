# Internet In A Box Setup

_Kids on Computers - Muwanguzi High School Lab_<br />
_Uganda_<br />
_Mar 2020_<br />

The media server is a Raspberry Pi, just like the student workstations, plus:

- Large SD Card (256GB)
- [Internet-in-a-Box](http://internet-in-a-box.org) platform, which includes:
  - Web Server and other daemons
  - Content
  - WiFi Access Point

The content available in this IIAB media server is customized to include
materials relavant to the age and technical experience of the kids in
the target schools. Content is licensed for free distribution and re-use
from sources like:
[Wikipedia](https://www.wikipedia.org/),
[Khan Academy](),
[Open Street Maps](),
the [RACHEL](https://worldpossible.org/rachel) community,
and more.

## Raspberry Pi Setup

Since the media server may also act as a teacher's workstation (at times, it may
even be connected to a projector, we start with the complete Student
workstation installation image. This image is based on Raspbian, plus has several
educational applications installed.

- Follow [Student Workstation](README.md) instructions first

## IIAB Initial Setup and Configuration

IIAB version 7.0 was used in this installation. Newer versions may have newer installation instructions. See https://github.com/iiab for details.

- Start Raspberry Pi
- Connect to Internet, using ethernet if available
- Start IIAB install with the following command:
  - `curl d.iiab.io/install.txt | sudo bash`
- IIAB Setup Options:
  - iiab-admin password: `g0admin`
  - Choose **2 - MEDIUM-sized**
  - Edit `local_vars.yml` and enable:

```
transmission_kalite_languages: english

minetest_install: True
minetest_enabled: True
```

    * This starts Khan Academy video downloads in the background, and enables the MineTest game server

- Run `sudo iiab` to complete install
  - Re-run `sudo iiab` if installation fails at any point
- After `sudo iiab` completes, you should be able to continue customiztion of IIAB from another computer on your local network, using a web browser (and possibly ssh). From your other computer, navigate to http://box/. If this doesn't work, find the IP address on the Raspberry Pi by opening a terminal and typing `ifconfig`.

## Content Customization

IIAB has many server applications and content choices. Follow these steps to install content appropriate for Uganda schools and that will fit on 128GB micro SD cards.

---

### Install Content

Go to http://box/admin/ (default password [here](http://wiki.laptop.org/go/IIAB/FAQ#What_are_the_default_passwords.3F), then to **Install Content**. Look for and install the following:

#### Zim Files from Kiwix

- wikipedia_en_for-schools
- wikibooks_en_all_novid
- wikipedia_en_all_novid (79GB)

#### OER2Go(RACHEL) Modules

- African Storybook Project
- Algebra2Go
- Blockly Games
- Book Dash Books
- Boundless Textbooks
- CK-12: High quality textbooks
- Educate!
- Great Books of the World
- Hesperian Health Guides
- Mustard Seed Books
- OpenStax Textbooks
- Raspberry Pi Beginners Guide & User Guide
- Saylor Academy Textbooks
- Women in African History

#### Maps

- OpenStreetMap: 18 Levels of Zoom for Africa (10.56GB)
  - (Use `Install Content`, `Get Map Region` to download)

#### Other Modules

These modules are installed by editing `/etc/iiab/local_vars.yml` and running `sudo iiab`.

- NextCloud
- Calibre-Web (disabled, since we don't have any books)
- Sugarizer

#### Khan Academy Videos (KA Lite)

By enabling `transmission_kalite_languages: english` in `/etc/iiab/local_vars.yaml` during setup, Khan Academy videos should have started downloading via bittorrent in the background. Monitor the progress at http://box:9091/, and follow instructions on [IIAB FAQ](http://wiki.laptop.org/go/IIAB/FAQ#KA_Lite_Administration:_What_tips_.26_tricks_exist.3F) to complete install after download finishes.

---

### Customize Menu

With content downloaded, we need to customize the menu that is shown when users go to the IIAB [home page](http://box/home). To customize, go to http://box/admin/, then **Content Menus**, then **Content Item List**.

Drag/drop titles as appropriate to make all installed content available on the Home page.

In some cases, menu items required editing. These files were found in `/library/www/html/js-menu/menu-files/menu-defs/`.

---

### Backup/Restore

The entire operating system and all IIAB content files can be backed-up from an SD card, and restored to a new SD card.

#### Prerequisites

- Use a modern version of Linux (including Raspbian)
  - Your distro of Linux will need support for the `exfat` file systems, due to the very large size of the backup file
    - Linux packages `exfat-utils` and `fuse-exfat` (sometimes `exfat-fuse`) provide this
- You will need a disk where you can write a very large file, with up to 256GB of free space, such as:

  - Local file system on laptop hard drive
  - Or, a 256GB+ USB Flash Drive, with an `exfat` filesystem
    - For example, you could create a partition on a large USB drive with: `sudo mkfs.exfat /dev/sdb1`
    - Or, use Linux `Disks` utility to create an exfat partition, named `iiab-mar-2020` or similar

#### Backup

- Using a multicard reader, insert the SD card containing the IIAB system, note the device (e.g. `/dev/sdb`)
- (Optional) Insert the USB Flash Drive, and mount it (e.g. `/run/media/user/iiab-mar-2020/`)
- Execute the following command (as root) to create a gzipped backup of the IIAB filesystem:
  - `dd if=/dev/sdb status=progress bs=1M | gzip > /run/media/user/iiab-mar-2020/koc-muwanguzi-iiab-mar-2020-v1.img.gz`
  - Wait ... this may take several hours
- When complete, the `.img.gz` file will be very large, but should be significantly less than 256GB

#### Restore

- (Optional) Insert the USB Flash Drive containing the backup file in `.img.gz` format
- Locate the path to the backup file on your filesystem
- Using a multicard reader, insert the 256GB SD card that you want to restore the image to, note the device (e.g. `/dev/sdb`)
- Execute the following command (as root) to decompress the backup file and write it to the SD card:
  - `gunzip -c /run/media/user/iiab-mar-2020/koc-muwanguzi-iiab-mar-2020-v1.img.gz | dd of=/dev/sdb status=progress bs=1M`
  - Wait ... this may take several hours
- When complete, insert the SD card into a Raspberry Pi and boot to verify
