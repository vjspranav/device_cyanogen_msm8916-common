#
# Copyright (C) 2016 The CyanogenMod Project
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

PLATFORM_PATH := device/cyanogen/msm8916-common

# Platform
TARGET_BOARD_PLATFORM := msm8916

# Architecture
ifneq ($(FORCE_32_BIT),true)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true
else
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
endif

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8916
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_RECOVERY_DEVICE_MODULES := libinit_msm8916

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true
ifeq ($(TARGET_BOARD_PLATFORM_VARIANT),msm8939)
TARGET_POWERHAL_SET_INTERACTIVE_EXT := $(PLATFORM_PATH)/power/power_ext.c
endif
TARGET_POWERHAL_VARIANT := qcom
# TARGET_RIL_VARIANT := caf
MALLOC_SVELTE := true

#Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

#Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

#Hardware
BOARD_HARDWARE_CLASS += hardware/cyanogen/cmhw
BOARD_USES_HARDWARE := true

#Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000

ENABLE_CPUSETS := true

TARGET_KERNEL_SOURCE := kernel/cyanogen/msm8916

#Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true

#Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

#Display

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000U
TARGET_USES_C2D_COMPOSITION := true
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true

# Healthd
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Render
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
USE_OPENGL_RENDERER := true

#FM
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

#Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Recovery
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_cm

#Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(PLATFORM_PATH)

#Properties
TARGET_SYSTEM_PROP += $(PLATFORM_PATH)/system.prop

#Wifi
BOARD_HAS_QCOM_WLAN := true

BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn

BOARD_WLAN_DEVICE := qcwcn

BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn

TARGET_USES_QCOM_WCNSS_QMI := true

WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"

WPA_SUPPLICANT_VERSION := VER_0_8_X

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_PHONY_TARGETS := true
