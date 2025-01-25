#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

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

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sp9832e_1h10_gofu-user 9 PPR1.180610.011 378 release-keys"

BUILD_FINGERPRINT := Qin/sp9832e_1h10_gofu/sp9832e_1h10_go:9/PPR1.180610.011/378:user/release-keys
