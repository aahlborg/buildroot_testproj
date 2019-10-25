#!/bin/sh

# Patch config.txt
CONFIG_TXT=$BINARIES_DIR/rpi-firmware/config.txt
INSERT_LINE="dtparam=i2c_arm=on"
if grep -Fxq "$INSERT_LINE" $CONFIG_TXT; then
    # Already patched
    echo "Already patched"
else
    # Insert line
    echo $INSERT_LINE >> $CONFIG_TXT
fi
