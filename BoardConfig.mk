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


# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := a3qhdcl

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02008000 --tags_offset 0x01e00000 --dt device/htc/a3qhdcl/recovery/dt.img
TARGET_PREBUILT_KERNEL := device/htc/a3qhdcl/recovery/kernel

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p1: 00100000  00000200  "sbl1"
#mmcblk0p2: 02000000  00000200  "pg1fs"
#mmcblk0p3: 00004000  00000200  "board_info"
#mmcblk0p4: 00ef7c00  00000200  "reserve_1"
#mmcblk0p5: 00040000  00000200  "mfg"
#mmcblk0p6: 017afc00  00000200  "pg2fs"
#mmcblk0p7: 00040000  00000200  "sbl1_update"
#mmcblk0p8: 00040000  00000200  "rpm"
#mmcblk0p9: 00200000  00000200  "tz"
#mmcblk0p10: 00008000  00000200  "sdi"
#mmcblk0p11: 00400000  00000200  "hboot"
#mmcblk0p12: 00500000  00000200  "sp1"
#mmcblk0p13: 00100000  00000200  "wifi"
#mmcblk0p14: 00008000  00000200  "ddr"
#mmcblk0p15: 00100000  00000200  "dsps"
#mmcblk0p16: 03c00400  00000200  "adsp"
#mmcblk0p17: 00500000  00000200  "wcnss"
#mmcblk0p18: 00800000  00000200  "radio_config"
#mmcblk0p19: 00180000  00000200  "fsg"
#mmcblk0p20: 04b00400  00000200  "radio"
#mmcblk0p21: 00400000  00000200  "tool_diag"
#mmcblk0p22: 00a00000  00000200  "custdata"
#mmcblk0p23: 006ffc00  00000200  "reserve_2"
#mmcblk0p24: 00100000  00000200  "misc"
#mmcblk0p25: 00180000  00000200  "modem_st1"
#mmcblk0p26: 00180000  00000200  "modem_st2"
#mmcblk0p27: 01400000  00000200  "fataldevlog"
#mmcblk0p28: 00001000  00000200  "debug_config"
#mmcblk0p29: 00040000  00000200  "pdata"
#mmcblk0p30: 00004000  00000200  "control"
#mmcblk0p31: 00140400  00000200  "local"
#mmcblk0p32: 00010000  00000200  "extra"
#mmcblk0p33: 00100000  00000200  "cdma_record"
#mmcblk0p34: 00000400  00000200  "fsc"
#mmcblk0p35: 00002000  00000200  "ssd"
#mmcblk0p36: 00040000  00000200  "skylink"
#mmcblk0p37: 01900000  00000200  "carrier"
#mmcblk0p38: 01e00000  00000200  "devlog"
#mmcblk0p39: 00e28800  00000200  "reserve"
#mmcblk0p40: 01000000  00000200  "boot"
#mmcblk0p41: 01000000  00000200  "recovery"
#mmcblk0p42: 31000000  00000200  "cache"
#mmcblk0p43: 90000000  00000200  "system"
#mmcblk0p44: f0000000  00000200  "userdata"
#mmcblk0p45: 00a00000  00000200  "vzw_logger"
#mmcblk0p46: 00a00000  00000200  "vzw_quality"

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2415919104
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4026531840
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 131072

#TWRP
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_THEME := portrait_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_INITRC := device/htc/a3qhdcl/recovery/init.rc
TW_INCLUDE_CRYPTO := true
TW_NO_EXFAT_FUSE := true
