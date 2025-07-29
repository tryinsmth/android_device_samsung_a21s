#
# Copyright (C) 2020-2025 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

## Inherit from a21s device
$(call inherit-product, device/samsung/a21s/device.mk)

# Whether you are compiling being an OFFICIAL Maintainer:
INFINITY_BUILD_TYPE := UNOFFICIAL 

# Maintainer Name
INFINITY_MAINTAINER := Mustafa

# Whether the package includes System BLURS
TARGET_SUPPORTS_BLUR := true

# Whether the compiled package ships Google Apps:
WITH_GAPPS := false

# Whether the compiled package ships more (mostly unimportant) Google Apps:
TARGET_SHIPS_FULL_GAPPS := false 

# Whether the compiled shipped gapps package uses Google Dialer:
TARGET_SHIPS_GOOGLE_DIALER := false 

# Whether the compiled package ships Motorola Calculator:
USE_MOTO_CALCULATOR := true

## Inherit some common infinity stuff
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

## Boot Animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

## Device identifier, this must come after all inclusions
PRODUCT_DEVICE := a21s
PRODUCT_NAME := infinity_a21s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A217F
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 29

PRODUCT_GMS_CLIENTID_BASE := android-samsung
