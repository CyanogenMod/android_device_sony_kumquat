$(call inherit-product, device/sony/kumquat/full_kumquat.mk)

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST25i_1262-1120 BUILD_FINGERPRINT=SEMC/ST25i_1262-1120/ST25i:4.0.4/6.1.1.B.1.10/9bt3zw:user/release-keys PRIVATE_BUILD_DESC="ST25i-user 4.0.4 6.1.1.B.1.10 9bt3zw test-keys"

TARGET_BOOTANIMATION_NAME := vertical-480x854

PRODUCT_NAME := cm_kumquat
PRODUCT_DEVICE := kumquat
