### KoC/Mwebaza Customization
These steps further customize the desktop experience, and prepare the OS for usage by students.

#### Download desktop background images

- Install Raspbian first
- Connect to a WiFi access point with access to the Internet
- Open a terminal and run the following:

```
mkdir -p koc/install
```

- Using web browser, download the following file into `koc/install` folder created in the last step:

  - https://github.com/kidsoncomputers/documentation/raw/master/uganda/2020/muwanguzi/scripts/koc-rpi.sh

- Return to the terminal and run:

```
cd koc/install
chmod u+x koc-rpi.sh
./koc-rpi.sh
```

#### Raspberry Pi 4 / Raspbian Audio Problems

Over HDMI, audio is choppy. A fix is described [here](https://steamcommunity.com/app/353380/discussions/6/1642042464753800526/) that seems to work:

- sudo nano /etc/pulse/default.pa
- Find the line that has the following: `Load-module module-dev-detect`
- Modify it to: `load-module module-udev-detect tsched=0`
- Ctrl + O to save
- Reboot

#### Install Visual Studio Code

Visual Studio Code editor. Instructions adapted from [here](https://code.headmelted.com/#platforms).

```
cd koc/install
wget -O vs-code-install.sh https://code.headmelted.com/installers/apt.sh
sudo sh vs-code-install.sh
```

#### Download Zeal Docsets
Zeal is an offline documentation viewer. It is included for installation on the [package list](packages.txt), but docsets for specific languages need to be downloaded.

* Open Zeal (Programming, Zeal)
* Select Tools, Docsets ...
* From the Available tab, install the following (or more)
```
Angular
AngularJS
Apache HTTP Server
Bash
Bootstrap 4
C
C++
CMake
CSS
HTML
JavaScript
Java SE12
Markdown
MySQL
NodeJS
PHP
Perl
PostgreSQL
Python 2
Python 3
React
SQLite
jQuery
jQuery UI
```

Some of the docsets (Javascript, HTML, CSS, etc.) don't render correctly, until the following fix is applied:

```
pushd "$HOME/.local/share/Zeal/Zeal/docsets" >/dev/null || return
find . -iname 'react-main*.js' -exec rm '{}' \;
popd >/dev/null || exit
```


#### Change background

- Right-click desktop, choose **Desktop Preferences**, **Desktop**, **Picture**, then select a background image from `pi/Backgrounds` folder
- You may also need to adjust the background color and/or the text color for desktop icons

#### (Optional) Join `Internet in a Box` WiFi Network

- If `Internet in a Box` WiFi network is available, join the network so that the workstation will remember and re-join when booted.

#### Chromium Browser setup

##### Add browser bookmark for `Internet in a Box` home page

(Follow these steps only if on `Internet in a Box` WiFi network)

- Create bookmark to Internet in a Box home page
  - Open Web Browser (Chromium)
  - Go to `http://box/home/`
  - Click **Star** to create bookmark
    - Name: "Internet in a Box"
    - Folder: Bookmarks bar
- Show bookmarks bar
  - Click menu (three dots)
  - Go to Bookmarks, then "Show bookmarks bar"
- Remove "Apps"
  - Right-click on bookmarks bar
  - De-select "Show apps shortcut"

##### Clear cache, cookies, history
This will help ensure a fresh setup, and minimize the size of the installation image.

- Open Chromium
- Use menu (three dots) to get to Settings
- Using search bar, type `cache`
- Scroll down and select `Clear browsing data`
- Select Time range: All time, and Clear Data

#### Other

- Turn off bluetooth (save power): Click bluetooth icon at top left, choose **Turn off Bluetooth**

#### Remove any unused packages
- `sudo apt-get autoremove --purge` will remove unused packages and free up some disk space


