# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := A510

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/acer/a510/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a510
PRODUCT_NAME := omni_a510
PRODUCT_BRAND := Acer
PRODUCT_MODEL := A510
PRODUCT_MANUFACTURER := Acer

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=a510_pa_cus1 \
    TARGET_DEVICE=picasso_m \
    BUILD_FINGERPRINT="acer/a510_pa_cus1/picasso_m:4.1.2/JZO54K/1354108731:user/release-keys" \
    PRIVATE_BUILD_DESC="a510_pa_cus1-user 4.1.2 JZ054K 1354108731 release-keys"
