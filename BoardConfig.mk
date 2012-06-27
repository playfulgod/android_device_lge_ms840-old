USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/ms840/BoardConfigVendor.mk

# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE -DNO_QCOM_MVS

# Scorpion optimizations
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

BOARD_KERNEL_CMDLINE := vmalloc=400M, console=ttyDCC0,115200,n8 androidboot.hardware=qcom loglevel=1
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048

# partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE 	   := 5690624
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6048768
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1031798784
BOARD_USERDATAIMAGE_PARTITION_SIZE := 274464768
BOARD_FLASH_BLOCK_SIZE 		   := 131072

# kernel
TARGET_PREBUILT_KERNEL := device/lge/ms840/kernel
TARGET_KERNEL_CONFIG := plague_defconfig

# recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/lge/ms840/recovery/recovery_kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/ms840/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true

# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true


BOARD_DATA_DEVICE := /dev/block/mmcblk0p28
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,barrier=1,noauto_da_alloc
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p26 BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime,barrier=1,noauto_da_alloc
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p27
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,barrier=1,noauto_da_alloc

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1

