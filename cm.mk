## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := protab2ips9

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pov/protab2ips9/device_protab2ips9.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := protab2ips9
PRODUCT_NAME := cm_protab2ips9
PRODUCT_BRAND := pov
PRODUCT_MODEL := protab2ips9
PRODUCT_MANUFACTURER := pov
