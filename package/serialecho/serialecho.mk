################################################################################
#
# serialecho 
#
################################################################################

SERIALECHO_VERSION = 7acc974041f2e8cb55f892140b306a8c76093811
SERIALECHO_SITE = $(call github,scottellis,serialecho,$(SERIALECHO_VERSION))
SERIALECHO_LICENSE = MIT
SERIALECHO_LICENSE_FILES = README.md

define SERIALECHO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define SERIALECHO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/serialecho $(TARGET_DIR)/usr/bin 
endef

$(eval $(generic-package))
