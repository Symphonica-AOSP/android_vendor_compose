# Inherit full common Lumina stuff
$(call inherit-product, vendor/lumina/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

$(call inherit-product, vendor/lumina/config/telephony.mk)
