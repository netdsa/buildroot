###############################################################################
#
# dsatest
#
###############################################################################

DSATEST_VERSION = fdef24f0e384affcc747e9a1bdba3c3dec9f3fdc
DSATEST_SITE = $(call github,netdsa,dsatest,$(DSATEST_VERSION))
DSATEST_LICENSE = unknown
DSATEST_DEPENDENCIES = python-paramiko iproute2
DSATEST_SETUP_TYPE = setuptools

$(eval $(python-package))
