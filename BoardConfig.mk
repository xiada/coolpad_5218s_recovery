USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/coolpad/5218s/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_VARIANT := cortex-a5

TARGET_BOOTLOADER_BOARD_NAME := 5218s

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x3508000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x3508000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xa2800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x139000000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/coolpad/5218s/kernel
TARGET_RECOVERY_FSTAB := device/coolpad/5218s/recovery/fstab.qcom
BOARD_CUSTOM_GRAPHICS := ../../../device/coolpad/5218s/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true
