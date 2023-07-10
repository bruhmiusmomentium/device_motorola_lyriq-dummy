# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lyriq device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := lyriq
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_lyriq
PRODUCT_MODEL := motorola edge 40

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := lyriq
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="lyriq_g-user 12 T2TL33.3-49-2 ea63d test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/lyriq_g/lyriq:13/T2TL33M.3-49-2/a5faf:user/release-keys
