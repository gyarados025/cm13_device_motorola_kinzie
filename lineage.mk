# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/motorola/kinzie/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/kinzie/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_kinzie
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := kinzie
PRODUCT_MODEL := XT1581
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_FINGERPRINT=motorola/kinzie_reteu/kinzie:6.0.1/MPKS24.107-54-6/7:user/release-keys \
PRIVATE_BUILD_DESC="kinzie_reteu-user 6.0.1 MPKS24.107-54-6 7 release-keys"
