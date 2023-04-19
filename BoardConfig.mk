-include device/xiaomi/msm8994-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/libra

# Platform
TARGET_BOARD_PLATFORM := msm8992
TARGET_BOOTLOADER_BOARD_NAME := msm8992

# Arch
TARGET_CPU_VARIANT := generic
TARGET_CPU_CORTEX_A53 := true

# Display
TARGET_SCREEN_DENSITY := 480

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := libinit_libra
TARGET_RECOVERY_DEVICE_MODULES := libinit_libra

# Kernel
TARGET_KERNEL_CONFIG := libra_user_defconfig

# Partition
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2013265920 #1920M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27980184576 #26G

# dt2w
TARGET_TAP_TO_WAKE_NODE := "/proc/touchscreen/double_tap_enable"

# Assertions
TARGET_BOARD_INFO_FILE ?= $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := 4C,libra

# Security patch level
VENDOR_SECURITY_PATCH := 2018-03-01

# Shims
TARGET_LD_SHIM_LIBS += /system/vendor/lib/hw/camera.vendor.msm8992.so|libshim_camera.so

# Inherit from the proprietary version
-include vendor/xiaomi/libra/BoardConfigVendor.mk
