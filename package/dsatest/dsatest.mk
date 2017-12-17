###############################################################################
#
# dsatest
#
###############################################################################

DSATEST_VERSION = c160f3f8a6a147e466b8f082503198004003bf51
DSATEST_SITE = $(call github,netdsa,dsatest,$(DSATEST_VERSION))
DSATEST_LICENSE = unknown
DSATEST_DEPENDENCIES = python3 python-setuptools python-paramiko iproute2

define DSATEST_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/root/dsatest
	rsync -a $(@D)/ $(TARGET_DIR)/root/dsatest/
endef

$(eval $(generic-package))
