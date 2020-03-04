## Kids on Computers / Muwanguzi High School Lab

Feb - Mar 2020

---

### Lab Overview

- https://www.kidsoncomputers.org/locations/uganda/muwanguzi-high-school
- 15 Raspberry Pi 4 (4GB RAM, 32GB SDCard) Student Workstations
- 1 Raspberry Pi 4 (4GB RAM, 256GB SDCard) Media Server

---

### Raspberry Pi Setup - Student Workstations

#### Unboxing and Physical Setup

Follow instructions for [unboxing and physical setup](../../2019/unboxing-and-physical-setup.md) of Raspberry Pi 3 Canakit, plus [https://youtu.be/7rcNjgVgc-I?t=268](add the fan) that comes with the Raspberry Pi 4 Canakit.

#### Software Installation

We will install Raspbian, add several packages, customize the settings/background, and then make a complete image that can be used to update all of the Pis.

- [01-operating-system-setup-raspbian.md](01-operating-system-setup-raspbian.md)
- [02-software-package-installation.md](02-software-package-installation.md)
- [03-koc-customization.md](03-koc-customization.md)

#### Create Cloned Image

These steps describe how to clone a customized Raspbian installation to an image file, for duplication to other SD Cards.

- [clone-image.md](clone-image.md)

#### Complete Image

A snapshot of the customized OS plus packages is coming soon

[Download Here](https://www.kidsoncomputers.org/data/projects/Uganda2020/) (unknown size)

Using the complete image file, write it to a 32GB+ SD card as follows:
- Unzip the file
- Use [**Etcher**](https://www.balena.io/etcher/) or other software (https://www.raspberrypi.org/documentation/installation/installing-images/README.md) to write the .img file to a new SD Card
- Insert into Raspberry Pi and boot
- Initial boot takes a bit longer than normal as the filesystem is unpacked, etc.
- For help with this image, contact Kids on Computers mailing list via email: kidsoncomputers@kidsoncomputers.org


---
### Internet in a Box Media Server

Setup an Internet in a Box media server on Raspberry Pi with these instructions:

- [Internet in a Box on Raspberry Pi](iiab-setup.md)
