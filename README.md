# Sample Buildroot project

This sample project uses a default raspberry pi configuration and configures it to run an i2c display demo.

## Building

Run

    make -C buildroot O=../build BR2_EXTERNAL=.. test_defconfig

to configure directories and then run

    make -C build

to build the project.

Saving the config to the repo

    make -C build savedefconfig BR2_DEFCONFIG=../configs/test_defconfig

## TODO


## Modifications

Based on raspberrypi_defconfig

### menuconfig

Enable console on ttyAMA0

### /etc/inittab

Run these commands

    ::sysinit:/sbin/modprobe i2c-dev
    ::sysinit:/sbin/modprobe i2c-bcm2835
    ::sysinit:/usr/bin/demo

### /boot/config.txt

Activate I2C

    dtparam=i2c_arm=on

### /bin/demo

Added as ssd1306_demo package
