################################################################################
#
# python-click
#
################################################################################

PYTHON_CLICK_VERSION = 6.7
PYTHON_CLICK_SOURCE = click-$(PYTHON_CLICK_VERSION).tar.gz
PYTHON_CLICK_SITE = https://files.pythonhosted.org/packages/95/d9/c3336b6b5711c3ab9d1d3a80f1a3e2afeb9d8c02a7166462f6cc96570897
PYTHON_CLICK_SETUP_TYPE = setuptools
PYTHON_CLICK_LICENSE = BSD
PYTHON_CLICK_LICENSE_FILES = LICENSE docs/license.rst

$(eval $(python-package))
