################################################################################
#
# python-certifi
#
################################################################################

PYTHON_CERTIFI_VERSION = 2018.4.16
PYTHON_CERTIFI_SOURCE = certifi-$(PYTHON_CERTIFI_VERSION).tar.gz
PYTHON_CERTIFI_SITE = https://files.pythonhosted.org/packages/4d/9c/46e950a6f4d6b4be571ddcae21e7bc846fcbb88f1de3eff0f6dd0a6be55d
PYTHON_CERTIFI_SETUP_TYPE = setuptools
PYTHON_CERTIFI_LICENSE = Mozilla Public License 2.0 (MPL 2.0)
PYTHON_CERTIFI_LICENSE_FILES = LICENSE

$(eval $(python-package))
