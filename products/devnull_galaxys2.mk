# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/galaxys2/full_galaxys2.mk)

# Inherit some common devnull stuff.
$(call inherit-product, vendor/devnull/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/devnull/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := devnull_galaxys2
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxys2
PRODUCT_MODEL := GT-I9100
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:2.3.4/GINGERBREAD/XXKG6:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 2.3.4 GINGERBREAD XXKG6 release-keys"

# Add additional mounts
PRODUCT_PROPERTY_OVERRIDES += \
    ro.additionalmounts=/mnt/emmc
