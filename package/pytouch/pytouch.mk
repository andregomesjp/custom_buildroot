################################################################################
#
# pytouch 
#
################################################################################

PYTOUCH_VERSION = 152b8da9f88a674f4e2dcbd9e8b38c4c497241d9
PYTOUCH_SITE = $(call github,scottellis,pytouch,$(PYTOUCH_VERSION))
PYTOUCH_LICENSE = MIT

PYTOUCH_DEPENDENCIES = python-pyqt5 

define PYTOUCH_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/pytouch.py $(TARGET_DIR)/usr/bin 
endef

$(eval $(generic-package))
