# Sample Buildroot project

This sample project uses a default raspberry pi configuration and configures it to run an i2c display demo.

## Building

Run

    make -C buildroot O=../build BR2_EXTERNAL=.. test_defconfig

or use _setup.sh_ to configure directories and then run

    make -C build

to build the project.

Saving the config to the repo

    make -C build savedefconfig BR2_DEFCONFIG=../configs/test_defconfig

Saving the Linux config to the repo

    make -C build linux-update-defconfig

## Modifications

Based on raspberrypi_defconfigs

### Linux kernel

Removed USB and network to speed up boot time

### menuconfig

Enable console on ttyAMA0

### /etc/init.d/S00-ssd1306

Init script added to load i2c driver and start the demo application.

### /boot/config.txt

Config file is patched in post-build to activate I2C in device tree

### /bin/demo

Added as ssd1306_demo package
