################################################################################
#
# python-w1thermsensor
#
################################################################################

PYTHON_W1THERMSENSOR_VERSION = 1.0.5
PYTHON_W1THERMSENSOR_SOURCE = w1thermsensor-$(PYTHON_W1THERMSENSOR_VERSION).tar.gz
PYTHON_W1THERMSENSOR_SITE = https://files.pythonhosted.org/packages/eb/e0/5e11d2d5da140bc907b3b01ca01e3dc26a9030fbc3b5ffc9953eeabc78a3
PYTHON_W1THERMSENSOR_SETUP_TYPE = setuptools
PYTHON_W1THERMSENSOR_LICENSE = MIT

$(eval $(python-package))
