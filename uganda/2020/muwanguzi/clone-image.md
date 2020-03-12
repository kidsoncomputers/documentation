Following these steps results in a running Raspberry Pi image that uses about 14GB of the SD Card.

---

## Clone Image

Once a workstation is fully installed, a "clone" image can be created and used for easy install of other workstations.

These steps work best on a Linux host, although they may be possible on other OSes.

### Clone Raspberry Pi SD Card to .img file

Follow the steps found here to copy the filesystem off of the SD card, then compress it make the image:

- https://medium.com/platformer-blog/creating-a-custom-raspbian-os-image-for-production-3fcb43ff3630

In short, the steps are:

- Insert the 32GB SD card into a multicard reader, and insert into a Linux laptop:
- Discover the device name (mine was `/dev/sdc`)
- Copy the entire 32GB into a local file:
  - `sudo dd if=/dev/sdc of=koc-muwanguzi-2020-v1-full.img bs=4M status=progress`
- Use [PiShrink](https://github.com/Drewsif/PiShrink) to make an image file that is only as big as the actual used space in the card:
  - `sudo ./pishrink.sh koc-muwanguzi-2020-v1-full.img koc-muwanguzi-2020-v1.img`
  - The resulting `.img` file, when written to a new SD card, will autoexpand on first boot.

### Compress

Zip the file with maximum compression

In this example, a 14GB `.img` file is compress to a 5GB `.img.zip` file:

```
$ ll koc-muwanguzi-2020-v1.img 
-rw-r--r--. 1 root root 13967729152 Mar 11 18:44 koc-muwanguzi-2020-v1.img
$ zip -9 koc-muwanguzi-2020-v1.img.zip koc-muwanguzi-2020-v1.img 
  adding: koc-muwanguzi-2020-v1.img (deflated 64%)
$ ll koc-muwanguzi-2020-v1.img.zip 
-rw-rw-r--. 1 tate tate 5059188052 Mar 11 20:02 koc-muwanguzi-2020-v1.img.zip
```
  
### Upload the Image to kidsoncomputers.org

With a .img file (and .zip) created it can optionally be uploaded to [kidsoncomputers.org/data](https://www.kidsoncomputers.org/data/) for sharing with others. This may take several hours, depending on Internet speed.

Also, to write to this location via `scp`, you'll need to get credentials. Check with a KoC Board Member (email: board@kidsoncomputers.org) if you need the credentials.

```
$ rsync -av --progress --partial --inplace \
  koc-muwanguzi-2020-v1.img.zip \
  kochosting@kidsoncomputers.org:/home/kochosting/kidsoncomputers.org/web/data/projects/Uganda2020/

kochosting@kidsoncomputers.org's password:
...
```
