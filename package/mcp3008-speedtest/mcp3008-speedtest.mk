################################################################################
#
# mcp3008-speedtest
#
################################################################################

MCP3008_SPEEDTEST_VERSION = 3fdf9cfbd18d861a6cf7783615a6490b17755ab6 
MCP3008_SPEEDTEST_SITE = $(call github,scottellis,mcp3008-speedtest,$(MCP3008_SPEEDTEST_VERSION))
MCP3008_SPEEDTEST_LICENSE = MIT
MCP3008_SPEEDTEST_LICENSE_FILES = LICENSE

define MCP3008_SPEEDTEST_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define MCP3008_SPEEDTEST_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/mcp3008-speedtest $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
