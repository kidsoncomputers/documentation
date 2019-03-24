Install Steps
=============

## 1. Download/Install Oracle VM VirtualBox

  * Download VirtualBox 5.1.22:
   https://www.virtualbox.org/wiki/Downloads

  * Download 8gb-koc-ubermix-3.20.img:
   https://drive.google.com/file/d/0B5tlxEYG-P8iT01UaEpPNklST2s/view

## 2. Install VirtualBox 5.1.22

  ### 2.1.- Double-click the setup file and follow the prompts to install
      During the Windows installation, keep all of the options set to their default

## 3. Convert .img to .vdmk with VBoxManage

  ### 3.1. Open the terminal as administrator and change to the directory where VirtualBox is installed, usually is:
      C:\Program Files\Oracle\VirtualBox

  ### 3.2. Use VBoxManage to convert file
      C:\Program Files\Oracle\VirtualBox\VBoxManage convertdd 8gb-koc-ubermix-3.20.img 8gb-koc-ubermix-3.20.vmdk

## 4. Open VirtualBox

  ### 4.1. Create a New VM with the following characteristics:
     Name: Choose a name
     Type: Linux
     Version: Ubuntu (64-bit)
     RAM: 2 GB
     Hard Disk: Create a virtual disk with a size of 20 GB (fixed size)

  ### 4.2. Configure the processors of VM
    Select the Ubermix VM > Click Settings > System > Processor
      Set Processor(s): 2

  ### 4.3. Configure the hard disk of VM for installation
    Select the Ubermix VM > Click Settings > Storage
      Adds hard disk and select Choose existing disk
        Select 8gb-koc-ubermix-3.20.vmdk
      In Attributes > Hard Disk: Choose SATA Port 0

## 5. Run Ubermix VM

  ### 5.1. Configure/Install
    Select Install/Configure Ubermix > Expert options > Reset primary disk partition map
    Select Easy image system using ubermix version 3.20
    Wait for the installation to finish

  ### 5.2. Remove the disk 8gb-koc-ubermix-3.20.vmdk from the Ubermix VM

  ### 5.3. Reboot the Ubermix VM
