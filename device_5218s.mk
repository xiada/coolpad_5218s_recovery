$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/coolpad/5218s/5218s-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/coolpad/5218s/overlay

LOCAL_PATH := device/coolpad/5218s
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Recovery
PRODUCT_COPY_FILES += \
    device/coolpad/5218s/recovery/fstab.qcom:recovery/root/fstab.qcom \
    device/coolpad/5218s/recovery/rmt_storage_recovery:recovery/root/sbin/rmt_storage_recover

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_5218s
PRODUCT_DEVICE := 5218s
