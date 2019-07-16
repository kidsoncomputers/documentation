# KoC/Mwebaza Raspberry Pi Image

* Download compressed `.img.zip` file:
  * Go to https://www.kidsoncomputers.org/data/projects/Uganda2019/
  * Download the latest image file ... currently: [koc-mwebaza-2019-v2.img.zip](https://www.kidsoncomputers.org/data/projects/Uganda2019/koc-mwebaza-2019-v2.img.zip) (3.8GB)
* Unzip the file
* (Optional) Verify, using `sha256sum`.  See hashes below.
* Use **Etcher** or other software (https://www.raspberrypi.org/documentation/installation/installing-images/README.md) to write the .img file to a new SD Card
* Insert into Raspberry Pi and boot
* Initial boot takes a bit longer than normal as the filesystem is unpacked, etc.
* For help with this image, contact Kids on Computers mailing list via email: kidsoncomputers@kidsoncomputers.org


### File Verification

##### koc-mwebaza-2019-v2
```
$ sha256sum koc-mwebaza-2019-v2.img; sha256sum koc-mwebaza-2019-v2.img.zip
eda63a13010a241a0106bbdbf14f9b2d5e4bcc45939c5182f6d399781df7d88b  koc-mwebaza-2019-v2.img
ae7f08bd0938998de8ee55db58a45d27cefc2f7d7cc7e80b3c82da5c2e94aa73  koc-mwebaza-2019-v2.img.zip
```
