################################################################################
#
# ssd1306_demo
#
################################################################################

SSD1306_DEMO_VERSION = master
SSD1306_DEMO_SITE = $(call github,iliapenev,ssd1306_i2c,$(SSD1306_DEMO_VERSION))
SSD1306_DEMO_DEPENDENCIES = wiringpi
SSD1306_DEMO_LICENSE = GPL-2.0
SSD1306_DEMO_LICENSE_FILES = COPYING

define SSD1306_DEMO_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
endef

define SSD1306_DEMO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/demo $(TARGET_DIR)/usr/bin/demo
endef

$(eval $(generic-package))
