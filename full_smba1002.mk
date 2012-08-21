# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Additional Product Packages for TeamDRH Build
PRODUCT_PACKAGES := \
    SpareParts \
    Development

# Live Wallpapers
PRODUCT_PACKAGES += \
    HoloSpiralWallpaper \
    LiveWallpapersPicker \
    VisualizationWallpapers \

# Camera
PRODUCT_PACKAGES += \
    Camera

# GPS
##PRODUCT_PACKAGES += \
##    gps.tegra


$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Inherit from smba_common
$(call inherit-product, device/malata/smba_common/device-common.mk)

# Inherit from vendor specific if exists
$(call inherit-product-if-exists, vendor/malata/smba1002/smba1002-vendor.mk)

# Inherit from device specific if exists
$(call inherit-product-if-exists, device/malata/smba1002/device-smba1002.mk)

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/malata/smba1002/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_smba1002
PRODUCT_DEVICE := smba1002
PRODUCT_BRAND := Malata
PRODUCT_MODEL := Malata SMBA1002
PRODUCT_RESTRICT_VENDOR_FILES := false
