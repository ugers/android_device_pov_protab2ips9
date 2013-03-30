# Release name
PRODUCT_RELEASE_NAME := TAB-PROTAB2-IPS9

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 768

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/pov/protab2ips9/device_protab2ips9.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := protab2ips9
PRODUCT_NAME := cm_protab2ips9
PRODUCT_BRAND := PointOfView
PRODUCT_MODEL := TAB-PROTAB2-IPS9
PRODUCT_MANUFACTURER := PointOfView
