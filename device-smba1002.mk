#
# Copyright (C) 2011 The Android Open-Source Project
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
#

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/malata/smba1002/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Install smba1002 kernel modules from prebuilt
$(call inherit-product, device/malata/smba1002/smba1002-modules.mk)

DEVICE_PACKAGE_OVERLAYS += device/malata/smba1002/overlay

PRODUCT_LOCALES := en_US

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=120

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Bluetooth
PRODUCT_COPY_FILES += \
    device/malata/smba-common/prebuilt/bcm4329.hcd:system/etc/firmware/bcm4329.hcd

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=120

# Harmony Hardware
PRODUCT_PACKAGES += \
	libmbm-ril
        
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

#Set default.prop properties for root + adb
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.secure=0 \
    ro.allow.mock.location=1 \
	persist.service.adb.enable=1

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	persist.service.adb.enable=1

# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
	PRODUCT_PACKAGES += send_bug
	PRODUCT_COPY_FILES += \
		system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
		system/extras/bugmailer/send_bug:system/bin/send_bug
endif

# Make it optional to include vendor stuff..Just to be nice ;)
ifneq ($(TARGET_IGNORE_VENDOR),yes)
$(call inherit-product, vendor/malata/smba1002/device-vendor.mk)
endif
