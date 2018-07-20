################################################################################
#
# tspress
#
################################################################################

TSPRESS_VERSION = 82a7a614ad858818b0db4d91583a15602c44b42a
TSPRESS_SITE = $(call github,scottellis,tspress,$(TSPRESS_VERSION))
TSPRESS_LICENSE = MIT

TSPRESS_DEPENDENCIES = qt5base

define TSPRESS_CONFIGURE_CMDS
	cd $(@D); $(TARGET_MAKE_ENV) $(HOST_DIR)/usr/bin/qmake
endef

define TSPRESS_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define TSPRESS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/tspress $(TARGET_DIR)/usr/bin 
endef

$(eval $(generic-package))
