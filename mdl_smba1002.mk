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

# Inherit from smba1002 device
$(call inherit-product, device/malata/smba1002/full_smba1002.mk)
# Inherit from DEADCREME vendor
$(call inherit-product-if-exists, vendor/deadcreme/deadcreme.mk)

PRODUCT_PACKAGES += \
    RootBrowserFree \
    Superuser \
    su

PRODUCT_NAME := mdl_smba1002
PRODUCT_DEVICE := smba1002
PRODUCT_BRAND := Malata
PRODUCT_MODEL := DEADCREME_kang
