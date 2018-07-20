################################################################################
#
# python-gtts_token
#
################################################################################

PYTHON_GTTS_TOKEN_VERSION = 1.1.1
PYTHON_GTTS_TOKEN_SOURCE = gTTS-token-$(PYTHON_GTTS_TOKEN_VERSION).zip
PYTHON_GTTS_TOKEN_BASENAME = gTTS-token-$(PYTHON_GTTS_TOKEN_VERSION)
PYTHON_GTTS_TOKEN_PACKAGE_NAME = python-gtts_token
PYTHON_GTTS_TOKEN_SITE = https://files.pythonhosted.org/packages/4c/c8/dd58eba1464729095217d3acfc4f6581348c6f495ea3342ed7dbc9f9e133
PYTHON_GTTS_TOKEN_SETUP_TYPE = setuptools
PYTHON_GTTS_TOKEN_LICENSE = MIT

define PYTHON_GTTS_TOKEN_EXTRACT_CMDS
	unzip $(DL_DIR)/$(PYTHON_GTTS_TOKEN_PACKAGE_NAME)/$(PYTHON_GTTS_TOKEN_SOURCE) -d $(DL_DIR)/
	mkdir -p $(BUILD_DIR)/python-gtts_token-1.1.1
	mv /home/andregms/dl/gTTS-token-1.1.1/* $(BUILD_DIR)/python-gtts_token-1.1.1/
endef

$(eval $(python-package))
