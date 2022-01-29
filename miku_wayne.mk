#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2021 Miku UI
#
# SPDX-License-Identifier: Apache-2.0
#

# Maintaier
MIKU_MASTER := xiaoleGun

# MikuUI COMMUNITY
TARGET_MIKU_BUILD_VARIANT := COMMUNITY

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Miku stuff
$(call inherit-product, vendor/miku/build/product/miku_product.mk)

# Inherit from wayne device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := wayne
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI 6X
PRODUCT_NAME := miku_wayne

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := wayne

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="wayne-user 8.1.0 OPM1.171019.011 V9.5.11.0.ODCCNFA release-keys"

BUILD_FINGERPRINT := xiaomi/wayne/wayne:8.1.0/OPM1.171019.011/V9.5.11.0.ODCCNFA:user/release-keys
