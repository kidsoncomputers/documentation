# Create Raspbian Virtual Environment for testing

## Install Qemu

  You must install Qemu for your environment.

## Run Qemu with Raspbian (First time)

```
git clone https://github.com/nachoparker/qemu-raspbian-network.git
cd qemu-raspbian-network
wget https://downloads.raspberrypi.org/raspbian_lite_latest -O raspbian_latest.zip
unzip raspbian_latest.zip
sudo ./qemu-pi.sh *-raspbian-jessie.img
```

*Note*: It's a little big image, so it'll take some time.

## Resize image

On the host run this command:

```
qemu-img resize -f raw 2017-04-10-raspbian-jessie.img +10G
```

In the client

```
sudo fdisk -l
```

You'll have 2 partitions on the list (using p command). Second will start in 91260 (Or something similar, TAKE NOTE OF IT)

```
sudo fdisk /dev/sda
```

In fdisk

  * Press 'd' to delete a partition.
  * Select 2 for the second partition.
  * Press 'n' to create a partition
  * Accept default primary, second partition but the start address should be 92160 (Or the number you took note)
  * Press 'w' to write the partition table to disk. If you did a mistake quit using 'q'

In raspbian terminal

```
sudo reboot
```

Now resize the partition

```
sudo resize2fs /dev/sda2
```

Verify the size partition using this command:

```
df -h
```

## Update the raspbian system

To execute raspbian, just use this command (with downloading the image again):

```
sudo ./qemu-pi.sh *-raspbian-jessie.img
```

Then:

```
sudo apt update
sudo apt upgrade
```
