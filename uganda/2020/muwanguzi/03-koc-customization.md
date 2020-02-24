### KoC/Mwebaza Customization

#### Download desktop background images

- Install Raspbian first
- Connect to WiFi
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

#### Change background

- Right-click desktop, choose **Desktop Preferences**, **Desktop**, **Picture**, then select a background image from `pi/Backgrounds` folder

#### (Optional) Join `Internet in a Box` WiFi Network

- If `Internet in a Box` WiFi network is available, join the network so that the workstation will remember and re-join when booted.

#### Add browser bookmark for `Internet in a Box` home page

(Follow these steps only if on `Internet in a Box` WiFi network)

- Create bookmark to Internet in a Box home page
  - Open Web Browser (Chromium)
  - Go to `http://box/home/`
  - Click **Star** to create bookmark
    - Name: "Internet in a Box"
    - Folder: Bookmarks bar
- Show bookmarks bar
  - Click three dots in Chromium
  - Go to Bookmarks, then "Show bookmarks bar"
- Remove "Apps"
  - Right-click on bookmarks bar
  - De-select "Show apps shortcut"

#### Other

- Turn off bluetooth (save power): Click bluetooth icon at top left, choose **Turn off Bluetooth**
