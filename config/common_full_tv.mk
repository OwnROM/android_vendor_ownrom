# Inherit full common OwnROM stuff
$(call inherit-product, vendor/ownrom/config/common_full.mk)

PRODUCT_PACKAGES += AppDrawer

DEVICE_PACKAGE_OVERLAYS += vendor/ownrom/overlay/tv
