#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TECNO-CG8 device
$(call inherit-product, device/tecno/CG8/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CG8
PRODUCT_NAME := twrp_CG8
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CG8
PRODUCT_MANUFACTURER := tecno
