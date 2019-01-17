# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from the proprietary version
-include vendor/htc/shooter/BoardConfigVendor.mk

# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
# Set to 9 for 8650A
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

TARGET_BOOTLOADER_BOARD_NAME := shooter
#TARGET_PROVIDES_LIBRIL := vendor/htc/shooter/proprietary/libril.so
BOARD_USES_LEGACY_RIL := true

# Bionic
MALLOC_SVELTE := true
#BOARD_KERNEL_BASE := 0x48000000
#BOARD_KERNEL_PAGE_SIZE := 2048 
# Camera
BOARD_HTC_3D_SUPPORT := true
USE_LEGACY_AUDIO_POLICY = 1

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := shooter
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

#BOARD_HAVE_SQN_WIMAX := true
BOARD_USES_QCOM_LIBS := true

# cat /proc/emmc
#dev:        size     erasesize name
# mmcblk0p17: 00040000 00000200 "misc"
# mmcblk0p22: 00fffc00 00000200 "recovery"
# mmcblk0p21: 01000000 00000200 "boot"
# mmcblk0p23: 31fffc00 00000200 "system"
# mmcblk0p32: 00140200 00000200 "local"
# mmcblk0p25: 06ebde00 00000200 "cache"
# mmcblk0p24: 4aabc400 00000200 "userdata"
# mmcblk0p28: 01400000 00000200 "devlog"
# mmcblk0p30: 00040000 00000200 "pdata"
# mmcblk0p18: 02800000 00000200 "radio"
# mmcblk0p19: 007ffa00 00000200 "radio_config"
# mmcblk0p26: 00400000 00000200 "modem_st1"
# mmcblk0p27: 00400000 00000200 "modem_st2"
# mmcblk0p8:  00c00200 00000200 "wimax"
# mmcblk0p33: 007ffa00 00000200 "udata_wimax"

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_CACHEIMAGE_PARTITION_SIZE := 116121088

#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 535941376
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838859776
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 638859776
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1394606080
#BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_BOOTIMAGE_PARTITION_SIZE := 7842880
#BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_CUSTOM_GRAPHICS := ../../../device/htc/shooter/recovery/graphics.c
#TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common


# Kernel
#TARGET_PREBUILT_KERNEL := device/htc/shooter/kernAl
#BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=shooter no_console_suspend=1

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01400000
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=shooter no_console_suspend=1 androidboot.selinux=permissive
BOARD_PAGE_SIZE := 2048
BOARD_KERNEL_BASE := 0x48000000
TARGET_KERNEL_SOURCE := kernel/htc/msm8960
TARGET_KERNEL_NO_MODULES := true
TARGET_KERNEL_CONFIG := shooter_test_defconfig
BUILD_KERNEL := true

# Use Snapdragon LLVM, if available
TARGET_USE_SDCLANG := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_USES_QCOM_BSP := true
TARGET_QCOM_MEDIA_VARIANT := caf-msm8960
TARGET_QCOM_DISPLAY_VARIANT := caf-msm8960
TARGET_QCOM_AUDIO_VARIANT := caf-msm8960
#TARGET_QCOM_RIL_VARIANT := caf-msm8960
BOARD_GLOBAL_CFLAGS += -DQCOM_BSP_LEGACY

#RECOVERY_VARIANT := twrp 
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := 1

# TWRP
#TW_THEME := portrait_mdpi
