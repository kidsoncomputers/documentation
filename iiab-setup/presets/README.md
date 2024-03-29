# IIAB Presets

Internet in a Box "preset" configurations for Kids on Computers labs.

## Presets

Some of these have been created by Tim Moody.

Each preset consists of 4 files that need to be downloaded to an IIAB server in `/opt/admin/cmdsrv/presets/`.

## How to Download a Preset

Get the `download-preset-folder.sh` shell script.  Put it somewhere on the IIAB server, but **not** in the presets folder.  Let's put it in `/opt/`

```
sudo -s
cd /opt/
curl -o download-preset-folder.sh \
 https://raw.githubusercontent.com/kidsoncomputers/documentation/master/iiab-setup/presets/download-preset-folder.sh; \
 chmod a+x download-preset-folder.sh
```

Run the `download-preset-folder.sh` script to download a specific preset folder.  For example, to download
the `mwebaza-2021` preset, run the following command:

```
cd /opt/admin/cmdsrv/presets/
/opt/download-preset-folder.sh \
 https://github.com/kidsoncomputers/documentation/tree/master/iiab-setup/presets/mwebaza-2021 \
 mwebaza-2021
```

## Use the Preset

* Login to your IIAB Admin at http://box/admin or http://<ip_addr>/admin
* Click **Install Content**, select the preset, then **Install Selected Collection**
* ... wait a few hours for the content to download
