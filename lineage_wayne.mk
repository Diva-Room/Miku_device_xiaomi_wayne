#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from wayne device
$(call inherit-product, device/xiaomi/wayne/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := wayne
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI 6X
PRODUCT_NAME := lineage_wayne

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := wayne

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="wayne-user 8.1.0 OPM1.171019.011 V9.5.11.0.ODCCNFA release-keys"

BUILD_FINGERPRINT := xiaomi/wayne/wayne:8.1.0/OPM1.171019.011/V9.5.11.0.ODCCNFA:user/release-keys
