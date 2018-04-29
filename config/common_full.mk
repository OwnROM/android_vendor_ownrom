# Inherit common Lineage stuff
$(call inherit-product, vendor/ownrom/config/common.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
