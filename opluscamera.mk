# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/oplus_camera_default_grant_permissions_list.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/default-permissions/oplus_camera_default_grant_permissions_list.xml \
    $(LOCAL_PATH)/configs/permissions/privapp-permissions-oplus.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-oplus.xml \
    $(LOCAL_PATH)/configs/sysconfig/hiddenapi-package-oplus-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/hiddenapi-package-oplus-whitelist.xml

# Oplus framework
PRODUCT_PACKAGES += \
    oplus-fwk

PRODUCT_BOOT_JARS += \
    oplus-fwk \
    oplus-support-wrapper

TARGET_USES_OPLUS_CAMERA := true

# Properties
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.camera.privapp.list=com.oplus.camera
    
# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/oplus/camera/sepolicy/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    vendor/oplus/camera/sepolicy/private

$(call inherit-product, vendor/oplus/camera/camera-vendor.mk)

