USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sony/kumquat/BoardConfigVendor.mk

#inherit from the common montblanc definitions
-include device/sony/montblanc-common/BoardConfigCommon.mk

TARGET_KERNEL_SOURCE := kernel/sony/u8500
TARGET_KERNEL_CONFIG := cyanogen_kumquat_defconfig
#TARGET_PREBUILT_KERNEL := device/sony/kumquat/prebuilt/kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 16

# the following two sizes are generous guesses
# since these partitions are not visible
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_CMDLINE := device/sony/montblanc-common/config/cmdline_512M.txt

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATA_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_FORCE_KERNEL_ADDRESS  := 0x00200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x01200000

COMMON_GLOBAL_CFLAGS += -DFANCY_NOTIFICATION

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p14

TARGET_OTA_ASSERT_DEVICE := ST25i,ST25a,kumquat
