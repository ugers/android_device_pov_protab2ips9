$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/pov/protab2ips9/protab2ips9-vendor.mk)

LOCAL_PATH := device/pov/protab2ips9
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(call find-copy-subdir-files,*.ko,$(LOCAL_PATH)/modules,system/vendor/modules) \

# Hardware HALs
PRODUCT_PACKAGES += \
    hwcomposer.sun4i \
    lights.sun4i \
    audio.primary.sun4i \
#    power.sun4i \

# Rootfs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.sun4i:root/fstab.sun4i \
    $(LOCAL_PATH)/init.sun4i.rc:root/init.sun4i.rc \
    $(LOCAL_PATH)/init.sun4i.usb.rc:root/init.sun4i.usb.rc \
    $(LOCAL_PATH)/ueventd.sun4i.rc:root/ueventd.sun4i.rc \

# Misc system/etc files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/egl.cfg:system/lib/egl/egl.cfg \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml \
#    $(LOCAL_PATH)/mixer_paths.xml:/system/etc/mixer_paths.xml \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 \
    ro.sf.hwrotation=180 \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_protab2ips9
PRODUCT_DEVICE := protab2ips9
