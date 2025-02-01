# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sp9832e_1h10_go device
$(call inherit-product, device/duoqin/sp9832e_1h10_go/device.mk)

PRODUCT_DEVICE := sp9832e_1h10_go
PRODUCT_NAME := omni_sp9832e_1h10_go
PRODUCT_BRAND := Qin
PRODUCT_MODEL := Qin 2
PRODUCT_MANUFACTURER := duoqin

PRODUCT_GMS_CLIENTID_BASE := android-duoqin
