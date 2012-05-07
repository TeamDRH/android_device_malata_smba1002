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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := false

BOARD_USES_AUDIO_LEGACY := false
TARGET_USES_OLD_LIBSENSORS_HAL := false

# Use the non-open-source parts, if they're present
-include vendor/malata/smba1002/BoardConfigVendor.mk

#TARGET_NO_RECOVERY := true
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
#TARGET_HAVE_TEGRA_ERRATA_657451 := true
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_BASE := 0x10000000
#Stock CMDLINE
#BOARD_KERNEL_CMDLINE := mem=512M@0M video=tegrafb console=ttyUSB0,115200n8 androidboot.console=ttyUSB0 tegraboot=nand mtdparts=tegra_nand:16384K@7424K(misc),16384K@62208K(recovery),16384K@79104K(boot),204800K@96000K(system)
#Test CMDLINE
#BOARD_KERNEL_CMDLINE := mem=512M@0M video=tegrafb console=ttyUSB0,115200n8 androidboot.console=ttyUSB0 tegraboot=nand mtdparts=tegra_nand:16384K@7424K(misc),16384K@62208K(recovery),16384K@79104K(boot),204800K@96000K(system),222464K@301312K(cache),4096K@24320K(bootbmp),32768K@28928K(logodata)

#BOARD_KERNEL_CMDLINE := mem=512M@0M video=tegrafb console=ttyUSB0,115200n8 androidboot.console=ttyUSB0 tegraboot=nand mtdparts=tegra_nand:16384K@7424K(misc),16384K@62208K(recovery),16384K@79104K(boot),256000K@96000K(system),171264K@352512K(cache),4096K@24320K(bootbmp),32768K@28928K(logodata)

#androidboot.carrier=wifi-only product_type=w
BOARD_PAGE_SIZE := 0x00000800

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := harmony
#TARGET_BOARD_INFO_FILE := device/malata/smba1002/board-info.txt
BOARD_EGL_CFG := device/malata/smba1002/files/egl.cfg

BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0FA00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/malata/smba1002/prebuilt/kernel

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
 
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

PRODUCT_CHARACTERISTICS := tablet
BOARD_USES_SECURE_SERVICES := true

#COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS
#BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
TARGET_OTA_ASSERT_SKIP := true
