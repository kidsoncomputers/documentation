# Internet In A Box Setup
*KoC/Mwebaza Labs*<br />
*Uganda*<br />
*July 2019*<br />

Each lab includes an offline **Media Server**, with educational materials
for use within the classroom over a WiFi network.

The media server is a Raspberry Pi, just like the student workstations, plus:
* Larger SD Card (128GB)
* [Internet-in-a-Box](http://internet-in-a-box.org) platform, which includes:
  * Web Server and other daemons
  * Content
  * WiFi Access Point

The content available in this IIAB media server is customized to include
materials relavant to the age and technical experience of the kids in
the target schools.  Content is licensed for free distribution and re-use
from sources like:
[Wikipedia](https://www.wikipedia.org/),
[Khan Academy](),
[Open Street Maps](),
the [RACHEL](https://worldpossible.org/rachel) community,
and more.


## Raspberry Pi Setup

Since the media server may also act as a teacher's workstation (at times, it may
even be connected to a projector, we start with the complete KoC/Mwebaza Student
workstation installation image.  This image is based on Raspbian, plus has several
educational applications installed.

* Follow [Student Workstation](README.md) instructions first


## IIAB Initial Setup and Configuration

* Start Raspberry Pi
* Connect to Internet, using ethernet if available
* Start IIAB install with the following command:
  * `curl d.iiab.io/install.txt | sudo bash`
* IIAB Setup Options:
  * iiab-admin password:  `g0admin`
  * Choose **2 - MEDIUM-sized**
  * Edit `local_vars.yml` and enable:
```
transmission_kalite_languages: english

minetest_install: True
minetest_enabled: True
```
    * This starts Khan Academy video downloads in the background, and enables the MineTest game server
  * Run `sudo iiab` to complete install
    * Re-run `sudo iiab` if installation fails at any point
* After `sudo iiab` completes, you should be able to continue customiztion of IIAB from another computer on your local network, using a web browser (and possibly ssh). From your other computer, navigate to http://box/.  If this doesn't work, find the IP address on the Raspberry Pi by opening a terminal and typing `ifconfig`.

## Content Customization
IIAB has many server applications and content choices. Follow these steps to install content appropriate for Uganda schools and that will fit on 128GB micro SD cards.

----
### Install Content
Go to http://box/admin/ (default password [here](http://wiki.laptop.org/go/IIAB/FAQ#What_are_the_default_passwords.3F), then to **Install Content**.  Look for and install the following:

#### Zim Files from Kiwix
* For 128GB SD Card:
  * wikipedia_en_for-schools
  * wikibooks_en_all_novid
  * wikispecies_en_all_novid
  * wikipedia_en_uganda
  * wiktionary_en_all_novid
  * vikidia_en_all
  * wikispecies_en_all_novid
* If using 256GB SD Card, consider adding some of these:
  * wikipedia_en_all_novid (80GB)
  * gutenberg_en_all (53GB)
  * crashcourse_en_all (18GB)

#### OER2Go(RACHEL) Modules
* For 128GB SD Card:
  * African Storybook Project
  * Algebra2Go
  * Bino & Fino
  * Blockly Games
  * Book Dash Books
  * Boundless (Static)
  * Cat and Dog Books
  * English Storybooks
  * Hesperian Health Guides
  * Mustard Seed Books
  * OER Africa
  * Teacher Training
  * UNESCO's IICBA Electronic Library
  * WikEM: Global Emergency Medicine Wiki
  * Women in African History
  * World Map (Zoom 10)
  * openstax Textbooks
  

#### Map Region
* For 128GB SD Card:
  * Africa (10.39GB)

#### Khan Academy Videos (KA Lite)
By enabling `transmission_kalite_languages: english` in `/etc/iiab/local_vars.yaml` during setup, Khan Academy videos should have started downloading via bittorrent in the background.  Monitor the progress at http://box:9091/, and follow instructions on [IIAB FAQ](http://wiki.laptop.org/go/IIAB/FAQ#KA_Lite_Administration:_What_tips_.26_tricks_exist.3F) to complete install after download finishes.


----
### Customize Menu
With content downloaded, we need to customize the menu that is shown when users go to the IIAB [home page](http://box/home). To customize, go to http://box/admin/, then **Content Menus**, then **Content Item List**.

```

```
