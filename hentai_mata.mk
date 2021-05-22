# Inherit some common AOSP stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)

# Hentai
$(call inherit-product, vendor/hentai/build/product/hentai_product.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/essential/mata/mata-vendor.mk)

# Device
$(call inherit-product, device/essential/mata/device.mk)

# Device identifiers
PRODUCT_DEVICE := mata
PRODUCT_NAME := hentai_mata
PRODUCT_BRAND := essential
PRODUCT_MODEL := PH-1
PRODUCT_MANUFACTURER := Essential Products
PRODUCT_RELEASE_NAME := mata

PRODUCT_ACTIONABLE_COMPATIBLE_PROPERTY_DISABLE := true
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

PRODUCT_CHARACTERISTICS := nosdcard

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ2A.210505.003/7255357:user/release-keys
