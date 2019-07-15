### KoC/Mwebaza Customization

#### Download desktop background images
* Install Raspbian first
* Connect to WiFi
* Open a terminal and run the following:
```
mkdir -p koc/install
```

* Using web browser, download the following file into `koc/install` folder created in the last step:
  * https://github.com/kidsoncomputers/documentation/raw/master/uganda/2019/scripts/koc-mwebaza-rpi.sh

* Return to the terminal and run:
```
cd koc/install
chmod u+x koc-mwebaza-rpi.sh
./koc-mwebaza-rpi.sh
```

#### Change background

* Right-click desktop, choose **Desktop Preferences**, **Desktop**, **Picture**, then select a background image from `pi/Backgrounds` folder

#### (Optional) Join `Internet in a Box` WiFi Network
* If `Internet in a Box` WiFi network is available, join the network so that the  workstation will remember and re-join when booted.

#### Add browser bookmark for `Internet in a Box` home page
(Follow these steps only if on `Internet in a Box` WiFi network)
* Create bookmark to Internet in a Box home page
  * Open Web Browser (Chromium)
  * Go to `http://box/home/`
  * Click **Star** to create bookmark
    * Name: "Internet in a Box"
    * Folder: Bookmarks bar
* Show bookmarks bar
  * Click three dots in Chromium
  * Go to Bookmarks, then "Show bookmarks bar"
* Remove "Apps"
  * Right-click on bookmarks bar
  * De-select "Show apps shortcut"

#### Other
* Turn off bluetooth (save power): Click bluetooth icon at top left, choose **Turn off Bluetooth**
