# L3G4200D gyroscope driver (for Raspberry Pi)

## Warning
This is work in progress and is *not usable* in its current state.

## Building

* Set `KERNEL_SRC` to point to kernel source directory
* Set `CCPREFIX` to `path-to-raspi-tools/arm-bcm2708/arm-bcm2708-linux-gnueabi/bin/arm-bcm2708-linux-gnueabi-`
* run `make`

## Instantiating driver
Install the driver using `insmod` or `modprobe` and then let the kernel know about your device.
I have the gyro connected to i2c bus 1, using address 0x69 which gives the command as

    $ echo l3g4200d 0x69 | sudo tee /sys/bus/i2c/devices/i2c-1/new_device
    
    
