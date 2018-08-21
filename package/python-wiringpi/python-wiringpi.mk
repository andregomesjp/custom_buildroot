################################################################################
#
# python-wiringpi
#
################################################################################

PYTHON_WIRINGPI_VERSION = 2.46.0
PYTHON_WIRINGPI_SOURCE = wiringpi-$(PYTHON_WIRINGPI_VERSION).tar.gz
PYTHON_WIRINGPI_SITE = https://files.pythonhosted.org/packages/1b/9b/02f4a84697f53ab1dc2783398956dd252cae71638976553f224a753a15ef
PYTHON_WIRINGPI_SETUP_TYPE = setuptools
PYTHON_WIRINGPI_LICENSE = LGPL
PYTHON_WIRINGPI_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
