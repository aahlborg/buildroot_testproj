# Sample Buildroot project

This sample project uses a default raspberry pi configuration and configures it to run an i2c display demo.

## Building

Run 'setup.sh' to configure directories and then run 'make -c build' to build the project.

## Modifications

Based on raspberrypi_defconfig

### menuconfig

Enable console on ttyAMA0

### /etc/inittab

Run these commands

    ::sysinit:/sbin/modprobe i2c-dev
    ::sysinit:/sbin/modprobe i2c-bcm2835
    ::sysinit:/bin/demo

### /boot/config.txt

Activate I2C

    dtparam=i2c_arm=on

### /bin/demo

Built out-of-tree for now
