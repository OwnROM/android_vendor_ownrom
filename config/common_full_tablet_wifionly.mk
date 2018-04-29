# Inherit full common OwnROM stuff
$(call inherit-product, vendor/ownrom/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include OwnROM LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/ownrom/overlay/dictionaries
