USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/pov/protab2ips9/BoardConfigVendor.mk

# Architecture
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# Platform/device
TARGET_BOARD_PLATFORM := sun4i
TARGET_BOOTLOADER_BOARD_NAME := protab2ips9

# Partition sizes; must be in decimal
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736
#TODO BOARD_FLASH_BLOCK_SIZE only seems to be used for max size calculation;
# need to sort out what it should be set to for ext4 filesystems, if at all..
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel
#TODO replace prebuilt kernel with built from source!
TARGET_PREBUILT_KERNEL := device/pov/protab2ips9/kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=8
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGE_SIZE := 2048

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/nandi
TARGET_OTA_ASSERT_DEVICE := crane,protab2ips9

# Compatibility
BOARD_EGL_NEEDS_LEGACY_FB := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
TARGET_RECOVERY_PRE_COMMAND := "echo -n boot-recovery | busybox dd of=/dev/block/nandf count=1 conv=sync; sync"

# Optimize boot animation
TARGET_BOOTANIMATION_PRELOAD := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pov/protab2ips9/bluetooth
