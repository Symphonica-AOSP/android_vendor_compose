# Inherit common mobile Lumina stuff
$(call inherit-product, vendor/lumina/config/common.mk)

# Include AOSP audio files
include vendor/lumina/config/aosp_audio.mk

# Aperture
PRODUCT_PACKGES += \
    Aperture

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifeq ($(PRODUCT_TYPE), go)
PRODUCT_PACKAGES += \
    Launcher3QuickStepGo

PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3QuickStepGo
else
PRODUCT_PACKAGES += \
    Launcher3QuickStep

PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3QuickStep
endif

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Themes
PRODUCT_PACKAGES += \
    ThemePicker
