# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cannong device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := cannong
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_cannong
PRODUCT_MODEL := M2007J22G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := cannong
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="cannong-user 10 QP1A.190711.020 V12.0.7.0.QJEEUXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/cannong_eea/cannong:10/QP1A.190711.020/V12.0.7.0.QJEEUXM:user/release-keys
