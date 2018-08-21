FTDI_SIO_SITE = /home/git/nucleus
FTDI_SIO_SITE_METHOD = local
FTDI_SIO_INSTALL_TARGET = yes

define FTDIO_SIO_BUILD_CMDS
    $(MAKE) -C $(@D) all
endef

define FTDIO_SIO_INSTALL_TARGET_CMDS
	$(INSTALL)
endef
$(eval $(cmake-package))

