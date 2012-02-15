# Inherit device configuration.
$(call inherit-product, device/malata/smba1002/full_smba1002.mk)

PRODUCT_RELEASE_NAME := TeamDRH_smba1002

# Inherit some common TeamDRH stuff.
$(call inherit-product, vendor/TeamDRH/config/common_full_tablet_wifionly.mk)

# Change these to values from a stock XOOM rom
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tervigon BUILD_ID=IML77 BUILD_FINGERPRINT=motorola/tervigon/wingray:4.0.3/IML77/239789:user/release-keys PRIVATE_BUILD_DESC="tervigon-user 4.0.3 IML77 239789 release-keys" BUILD_NUMBER=239789

# Additional AOSP Packages for TeamDRH build
PRODUCT_PACKAGES += \
    Gallery

# Additional CM Packages for TeamDRH build
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp

# Prebuilt Product Packages
PRODUCT_PACKAGES += \
    Elixir \
    RootBrowserFree

# Prebuild Copy Files
PRODUCT_COPY_FILES += \
    device/malata/smba1002/app/.root_browser:system/etc/.root_browser

PRODUCT_NAME := TeamDRH_smba1002
PRODUCT_DEVICE := smba1002
PRODUCT_BRAND := Malata
PRODUCT_MODEL := Malata SMBA1002
PRODUCT_MANUFACTURER := Malata

TARGET_CUSTOM_RELEASETOOL := $(ANDROID_BUILD_TOP)/vendor/TeamDRH/tools/squisher
