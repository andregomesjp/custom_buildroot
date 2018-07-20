# sentinel install configuration
LIBJANSSON_VERSION = master
LIBJANSSON_SITE = https://github.com/akheron/jansson
LIBJANSSON_SITE_METHOD = git
LIBJANSSON_CONFIG_SCRIPTS = configure
LIBJANSSON_INSTALL_STAGE = yes

$(eval $(cmake-package))
