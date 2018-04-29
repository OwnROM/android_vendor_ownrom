# Inherit mini common OwnROM stuff
$(call inherit-product, vendor/ownrom/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/ownrom/config/telephony.mk)
