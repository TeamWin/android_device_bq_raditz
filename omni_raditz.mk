$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/bq/raditz/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata \
    device/bq/raditz/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := raditz
PRODUCT_NAME := omni_raditz
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris V Plus
PRODUCT_MANUFACTURER := bq

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=raditz
