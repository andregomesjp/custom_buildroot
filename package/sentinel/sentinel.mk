# sentinel install configuration
SENTINEL_SITE = /home/git/nucleus
SENTINEL_SITE_METHOD = local
SENTINEL_INSTALL_TARGET = yes
SENTINEL_DEPENDENCIES = jansson
$(eval $(cmake-package))
