# Clone an SD Card to Image File

Once a workstation is fully installed with OS + packages + KoC customizations, a "clone" image can be created and used for easy install of other workstations.

These steps work best on a Linux host, although they may be possible on other OSes.

### Clone Raspberry Pi SD Card to .img file
Follow the steps found here to copy the filesystem off of the SD card, then compress it make the image:
* https://medium.com/platformer-blog/creating-a-custom-raspbian-os-image-for-production-3fcb43ff3630
  
In short, the steps are:
* Prepare customized OS, ensure it runs properly on a Rasperry Pi
* Shutdown the Pi and remove the SD card
* Insert the SD card into a multicard reader, and insert into a Linux laptop:
* Discover the device name (mine was `/dev/mmcblk0`)
* Copy the entire 32GB into a local file:
  * `sudo dd if=/dev/mmcblk0 of=koc-mwebaza-2024-v1-full.img bs=4M status=progress`
* Use [PiShrink](https://github.com/Drewsif/PiShrink) to make an image file that is only as big as the actual used space in the card:
  * `sudo ./pishrink.sh koc-mwebaza-2024-v1-full.img koc-mwebaza-2024-v1.img`
  * The resulting `.img` file, when written to a new SD card, will autoexpand on first boot.

### Compress
Zip the file with maximum compression

In this example, an 11GB `.img` file is compress to a 3.7GB `.img.zip` file:
```
$ ll koc-mwebaza-2024-v1.img 
-rw-r--r-- 1 pi pi 11069825536 Jan 23 09:22 koc-mwebaza-2024-v1.img
$ zip -9 koc-mwebaza-2024-v1.zip koc-mwebaza-2024-v1.img
  adding: koc-mwebaza-2024-v1.img (deflated 65%)
$ ll koc-mwebaza-2024-v1.zip 
-rw-r--r-- 1 tate pi 3909401454 Jan 23 10:02 koc-mwebaza-2024-v1.zip
```

### Upload the Image to kidsoncomputers.org
With a .img file (and .zip) created it can optionally be uploaded to [data.kidsoncomputers.org](http://data.kidsoncomputers.org) for sharing with others.  This may take several hours, depending on Internet speed.

Also, to write to this location via `scp`, you'll need to get credentials. Check with a KoC Board Member (email: board@kidsoncomputers.org) if you need the credentials.

```
$ scp koc-mwebaza-2024-v1.zip kochosting@kidsoncomputers.org:/home/kochosting/data.kidsoncomputers.org/projects/Uganda2024/
The authenticity of host 'kidsoncomputers.org (64.90.52.49)' can't be established.
ECDSA key fingerprint is SHA256:7qcYdp6XZeIEDP25VEOXjyJ/UblsgXjAIUo2wFwEFoQ.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'kidsoncomputers.org,64.90.52.49' (ECDSA) to the list of known hosts.
kochosting@kidsoncomputers.org's password: 
koc-mwebaza-2024-v1.zip                                                               100% 3728MB  25.7MB/s   02:25    
```
