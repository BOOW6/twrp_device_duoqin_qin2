# Release name
PRODUCT_RELEASE_NAME := sp9832e_1h10_go

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from this configs
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, build/target/product/core_base.mk)

#Treble Support
$(call inherit-product, $(SRC_TARGET_DIR)/product/treble_common.mk)

# Inherit from sp9832e_1h10_go device
$(call inherit-product, device/duoqin/sp9832e_1h10_go/device.mk)

PRODUCT_DEVICE := sp9832e_1h10_go
PRODUCT_NAME := omni_sp9832e_1h10_go
PRODUCT_BRAND := Qin
PRODUCT_MODEL := Qin 2
PRODUCT_MANUFACTURER := duoqin

PRODUCT_GMS_CLIENTID_BASE := android-duoqin

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
	ro.product.device \
	ro.product.name \
	ro.build.product

PRODUCT_PROPERTY_OVERRIDES += \
	ro.secure=1 \
	ro.adb.secure=0 \
	ro.debuggable=1 \
	persist.sys.usb.config=adb,mtp \
	sys.usb.config=adb,mtp

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/ld.config.txt:$(TARGET_COPY_OUT_SYSTEM)/etc/ld.config.txt
