## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := 5218s

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/coolpad/5218s/device_5218s.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := 5218s
PRODUCT_NAME := cm_5218s
PRODUCT_BRAND := coolpad
PRODUCT_MODEL := 5218s
PRODUCT_MANUFACTURER := coolpad
