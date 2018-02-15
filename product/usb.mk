# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.usb.rc

# Permissions
PRODUCT_COPY_FILES += \
<<<<<<< HEAD
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service
=======
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/vendor/etc/permissions/android.hardware.usb.accessory.xml
>>>>>>> 9bf90ef... msm8916: move permisions to vendor
