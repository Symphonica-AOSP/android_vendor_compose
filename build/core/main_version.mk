# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Luminarica System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lumina.version=$(LUMINA_VERSION) \
    ro.lumina.releasetype=$(LUMINA_BUILDTYPE) \
    ro.lumina.build.version=$(PRODUCT_VERSION_BRANCH)
