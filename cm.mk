$(call inherit-product, device/htc/shooter/shooter.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# mix 'n match fixes
#$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libqdutils_intermediates)
#$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libqdutils_intermediates/export_includes)
#$(shell ln -s $(TOP)/hardware/qcom/msm8960 $(TOP)/hardware/qcom/msm8660)
#$(shell cp $(TOP)vendor/htc/shooter/proprietary/handheld_core_hardware.xml $(TOP)frameworks/base/data/etc)

PRODUCT_NAME := cm_shooter
PRODUCT_DEVICE := shooter
PRODUCT_MODEL := PG86100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooter BUILD_ID=IML74K BUILD_FINGERPRINT="sprint/htc_shooter/shooter:4.0.3/IML74K/130920.2:user/release-keys" PRIVATE_BUILD_DESC="2.08.651.2 CL130920 release-keys"
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Release name and versioning
PRODUCT_RELEASE_NAME := Shooter
-include vendor/cm/config/common_full_phone.mk
