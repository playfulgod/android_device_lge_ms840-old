USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/ms840/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8x60
TARGET_CPU_ABI := abi=armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon

TARGET_BOOTLOADER_BOARD_NAME := cayman

BOARD_KERNEL_CMDLINE := vmalloc=400M, console=ttyDCC0,115200,n8 androidboot.hardware=qcom loglevel=1
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048

# Partition Info
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x0056D500
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x005C4C00
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lge/ms840/kernel
TARGET_KERNEL_CONFIG := cyanogenmod_ms840_defconfig 


#recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/ms840/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true

# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true