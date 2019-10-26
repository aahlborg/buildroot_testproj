#!/bin/sh

# Configures project-specific dirs and output dir

make -C buildroot O=../build BR2_EXTERNAL=.. test_defconfig

echo
echo "Configuration complete"
echo "Now run 'make -C build' to build the project"
