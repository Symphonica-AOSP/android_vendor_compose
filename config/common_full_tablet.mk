$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common Lumina stuff
$(call inherit-product, vendor/lumina/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/lumina/config/telephony.mk)
