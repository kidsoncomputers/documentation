# KoC/Mwebaza Raspberry Pi Image

* Download compressed `.img.zip` file:
  * Go to https://www.kidsoncomputers.org/data/projects/Uganda2019/
  * Download the latest image file (currently: [koc-mwebaza-2019-v1.img.zip](https://www.kidsoncomputers.org/data/projects/Uganda2019/koc-mwebaza-2019-v1.img.zip] (3.8GB)
* Unzip the file
* (Optional) Verify, using `sha256sum`.  See hashes below.
* Use **Etcher** or other software (https://www.raspberrypi.org/documentation/installation/installing-images/README.md) to write the .img file to a new SD Card
* Insert into Raspberry Pi and boot
* Initial boot takes a bit longer than normal as the filesystem is unpacked, etc.



### File Verification

##### koc-mwebaza-2019-v1
```
$ sha256sum koc-mwebaza-2019-v1.img; sha256sum koc-mwebaza-2019-v1.img.zip 
002938961ab9f66b38247370097e54211942e8a8bb321aea1c6bf49c46d05f56  koc-mwebaza-2019-v1.img
563b037ca6f79478efac99326dda90db324dce1996e078c3a09f4b2883321fe5  koc-mwebaza-2019-v1.img.zip
```
