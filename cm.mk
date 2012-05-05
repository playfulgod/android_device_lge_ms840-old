## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := CM9-Connect-4G-$(shell date +%m%d%Y)

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/ms840/device_ms840.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ms840
PRODUCT_NAME := cm_ms840
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-MS840
PRODUCT_MANUFACTURER := LGE

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_DEVICE=cayman \
PRODUCT_NAME=cayman_mpcs_us \
BUILD_ID=LG-MS910-CM9 \
BUILD_DISPLAY_ID=LG-MS840-CM9 \
BUILD_FINGERPRINT="lge/cayman_mpcs_us/cayman:4.0.4/IMM76D/MS840ZV8.47A73A3A:user/release-keys" \
PRIVATE_BUILD_DESC="cayman_mpcs_us-user 4.0.4 IMM76D MS840ZV8 release-keys" \
TARGET_BUILD_TYPE=eng \
BUILD_NUMBER=${DATE} 
