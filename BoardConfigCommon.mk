COMMON_PATH := device/retroid/t310-common

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a55

TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Board name
TARGET_BOOTLOADER_BOARD_NAME := ums312_2h10
TARGET_BOARD_PLATFORM := ums312

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_IMAGE_NAME := Image

# AB
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    system \
    system_ext \
    product \
    vendor \
    vbmeta_system \
    vbmeta_system_ext \
    vbmeta_product \
    vbmeta_vendor \

# Recovery as boot
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USERDATAIMAGE_PARTITION_SIZE := 117387017728
BOARD_CACHEIMAGE_PARTITION_SIZE := 104857600
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# Super partition
BOARD_SUPER_PARTITION_SIZE := 6446645248
BOARD_RETROID_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product
BOARD_SUPER_PARTITION_GROUPS := retroid_dynamic_partitions
# Using Virtual A/B OTA, so using more than half of super should be fine
BOARD_RETROID_DYNAMIC_PARTITIONS_SIZE := 3892244480

# File system types
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
# blockdev --getbsz /dev/block/mmcblk0p50
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

#BOARD_BUILD_SYSTEM_ROOT_IMAGE := false

# Reserve space for gapps install
ifneq ($(WITH_GMS),true)
BOARD_PRODUCTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 614400000
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 92160000
BOARD_SYSTEM_EXTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 92160000
# Save space in vendor to allow for user modifications
BOARD_VENDORIMAGE_EXTFS_INODE_COUNT := -1
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 92160000
endif

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_VBMETA_ALGORITHM := SHA256_RSA4096

# Sign bootimage with vbmeta
BOARD_AVB_BOOT_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_BOOT_ALGORITHM := SHA256_RSA4096
BOARD_AVB_BOOT_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_BOOT_ROLLBACK_INDEX_LOCATION := 1

# vbmeta_system
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA4096
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

# vbmeta_system_ext
BOARD_AVB_VBMETA_SYSTEM_EXT := system_ext
BOARD_AVB_VBMETA_SYSTEM_EXT_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_VBMETA_SYSTEM_EXT_ALGORITHM := SHA256_RSA4096
BOARD_AVB_VBMETA_SYSTEM_EXT_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_EXT_ROLLBACK_INDEX_LOCATION := 3

# vbmeta_vendor
BOARD_AVB_VBMETA_VENDOR := vendor
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA4096
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX_LOCATION := 4

# vbmeta_product
BOARD_AVB_VBMETA_PRODUCT := product
BOARD_AVB_VBMETA_PRODUCT_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_VBMETA_PRODUCT_ALGORITHM := SHA256_RSA4096
BOARD_AVB_VBMETA_PRODUCT_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_PRODUCT_ROLLBACK_INDEX_LOCATION := 5

# Exfat
TARGET_EXFAT_DRIVER := exfat

# Brightness
TW_BRIGHTNESS_PATH := /sys/class/backlight/sprd_backlight/brightness
BACKLIGHT_PATH := /sys/class/backlight/sprd_backlight/brightness

# Charging
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Use MKE2FS
TARGET_USES_MKE2FS := true

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB :=
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB :=
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/retroid/t310-common/bluetooth

# Graphics
TARGET_USES_HWC2 := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_VNDK_VERSION := current

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(COMMON_PATH)/configs/framework_compatibility_matrix.xml
DEVICE_MANIFEST_FILE := $(COMMON_PATH)/configs/manifest.xml
DEVICE_MATRIX_FILE := $(COMMON_PATH)/configs/compatibility_matrix.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay/aosp
DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay/lineage

USE_XML_AUDIO_POLICY_CONF := 1

# Vendor Security Patch
VENDOR_SECURITY_PATCH := 2021-08-05

# Lun file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.gs6/lun.%d/file

# Recovery Graphics
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Sepolicy
BOARD_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy
SELINUX_IGNORE_NEVERALLOWS := true

# Ignore overriding commands errors
BUILD_BROKEN_DUP_RULES := true

# Copy prebuilt elf files
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Metadata partition
BOARD_USES_METADATA_PARTITION := true

