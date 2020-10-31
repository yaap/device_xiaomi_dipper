LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Via
LOCAL_SRC_FILES := priv-app/Via/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

# Via
ifneq ($(TARGET_BUILD_GAPPS), true)
PRODUCT_PACKAGES += \
	Via
endif
