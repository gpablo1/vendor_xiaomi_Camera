#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/miuicamera-sm8250/configs/permissions/default-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions-miuicamera.xml \
    vendor/xiaomi/miuicamera-sm8250/configs/permissions/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml \
    vendor/xiaomi/miuicamera-sm8250/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.miui.notch=1 \
    ro.product.mod_device=${TARGET_DEVICE}

# Overlay
PRODUCT_PACKAGES += \
	MiuiCameraOverlayMi10 \
	vendor_xiaomi_hardware_campostproc_1_0 \
    libgui-xiaomi \
    libmicampostproc_client \
    libcamera_algoup_jni_xiaomi \
    libcamera_mianode_jni_xiaomi

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/xiaomi/miuicamera-sm8250/sepolicy/vendor

$(call inherit-product, vendor/xiaomi/miuicamera-sm8250/camera-vendor.mk)
