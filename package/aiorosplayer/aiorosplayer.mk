# aioros install configuration
AIOROSPLAYER_SITE = /home/git/aioros
AIOROSPLAYER_SITE_METHOD = local
AIOROSPLAYER_INSTALL_TARGET = yes
AIOROSPLAYER_DEPENDENCIES = dbus-python

define AIOROSPLAYER_INSTALL_TARGET_CMDS
	rm -rf $(TARGET_DIR)/bin/aioros*
	mkdir -p $(TARGET_DIR)/bin
	cp -R $(@D) $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
