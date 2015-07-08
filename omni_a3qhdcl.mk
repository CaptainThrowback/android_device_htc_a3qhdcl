# Release name
PRODUCT_RELEASE_NAME := a3qhdcl

# Inherit some CDMA stuff.
$(call inherit-product, vendor/omni/config/cdma.mk)

# Inherit device configuration
$(call inherit-product, device/htc/a3qhdcl/device.mk)

# Inherit some common Omni stuff
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a3qhdcl
PRODUCT_NAME := omni_a3qhdcl
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := htc
