#
# Copyright (C) 2021 StatiXOS
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

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script

# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl:64 \
    android.hardware.boot@1.0-impl.recovery:64 \
    android.hardware.boot@1.0-service \
    bootctrl.msm8998 \
    bootctrl.msm8998.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctl

# Init
PRODUCT_PACKAGES += \
    fstab.mata

# Platform
PRODUCT_USES_QCOM_HARDWARE := true
PRODUCT_BOARD_PLATFORM := msm8998

# IMS
PRODUCT_PACKAGES += \
    libbase_shim

# Keylayout
PRODUCT_COPY_FILES += \
    device/essential/mata/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/essential/mata
