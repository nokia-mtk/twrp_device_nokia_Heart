#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 - 2018 The LineageOS Project
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

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/root/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/root/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6735.rc:root/init.mt6735.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.mt6735:root/fstab.mt6735 \
    $(LOCAL_PATH)/rootdir/root/enableswap.sh:root/enableswap.sh \
    $(LOCAL_PATH)/rootdir/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/rootdir/root/sbin/busybox:root/sbin/busybox \
    $(LOCAL_PATH)/rootdir/root/init.microtrust.rc:root/init.microtrust.rc \
    $(LOCAL_PATH)/rootdir/root/init.volte.rc:root/init.volte.rc \
    $(LOCAL_PATH)/rootdir/root/init.connectivity.rc:root/init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6735.power.rc:root/init.mt6735.power.rc


PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Disable adb security
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.mount.fs=EXT4 \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	persist.service.acm.enable=0 \
	ro.config.low_ram=false

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=0
    
# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hw.gyroscope=false \
	persist.radio.apn_delay=5000 \
	persist.sys.media.use-awesome=false 

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp,adb,mass_storage

###2K18 - @izaqkull
