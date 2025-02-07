#
# Copyright (C) 2016 The Android Open Source Project
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

# Include common device configuration
$(call inherit-product, device/samsung/espressowifi/device-common.mk)

LOCAL_PATH := device/samsung/espressowifi

# This is a wifi-only device
PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only

# Include wifi-only overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay/aosp

# Audio configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/tiny_hw_espressowifi.xml:system/etc/sound/espressowifi \
    $(LOCAL_PATH)/audio/tiny_hw_espresso10wifi.xml:system/etc/sound/espresso10wifi

# IR
PRODUCT_PACKAGES += \
    consumerir.piranha \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml
