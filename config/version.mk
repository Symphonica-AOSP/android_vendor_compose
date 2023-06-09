PRODUCT_VERSION_BRANCH = terra

ifeq ($(LUMINA_VERSION_APPEND_TIME_OF_DAY),true)
    LUMINA_BUILD_DATE := $(shell date -u +%Y%m%d_%H%M%S)
else
    LUMINA_BUILD_DATE := $(shell date -u +%Y%m%d)
endif

# Filter out random types, so it'll reset to UNOFFICIAL
ifeq ($(filter OFFICIAL EXPERIEMENTAL,$(LUMINA_BUILDTYPE)),)
    LUMINA_BUILDTYPE := UNOFFICIAL
endif

LUMINA_VERSION_SUFFIX := $(LUMINA_BUILD_DATE)-$(LUMINA_BUILDTYPE)-$(LUMINA_BUILD)

# Internal version
LUMINA_VERSION := $(PRODUCT_VERSION_BRANCH)-$(LUMINA_VERSION_SUFFIX)

# Display version
LUMINA_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR)-$(LUMINA_VERSION_SUFFIX)
