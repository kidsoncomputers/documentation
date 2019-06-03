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


## Internet In A Box Setup and Configuration

* Start Raspberry Pi
* Connect to Internet, using ethernet if available
* Start IIAB install with the following command:
  * `curl d.iiab.io/install.txt | sudo bash`
* IIAB Setup Options:
  * iiab-admin password:  `g0admin`
  * Choose **3 - BIG-sized**
  * Do not edit local_vars.yml
  * ....
