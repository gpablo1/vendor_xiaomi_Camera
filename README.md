# Vendor Xiaomi MiuiCamera SM8250

Prebuilt stock MIUI Camera to include in custom ROM builds.

### Supported devices
* Xiaomi Mi 10     (UMI)
* Xiaomi Mi 10 Pro (CMI)

### How to use?

1. Clone this repo to `vendor/xiaomi/miuicamera-sm8250`

2. Inherit it from `device.mk` in device tree:

```
# Camera
$(call inherit-product-if-exists, vendor/xiaomi/camera/miuicamera.mk)
```

3. Download the apk from [Here](https://devuploads.com/users/ItzDFPlyer/13298/Beta%207.3) and place it in: proprietary/system/priv-app/MiuiCamera

4. Set `ro.product.mod_device` according to stock, and `ro.miui.notch=1` if the device has a display cutout, for example:

5. Create your own overlay and add it in miuicamera.mk (replace: MiuiCameraOverlayMi10)

```
PRODUCT_SYSTEM_PROPERTIES += \
    ro.miui.notch=1 \
    ro.product.mod_device=umi
```

