ifeq ($(TARGET_KERNEL_VERSION),5.10)
ifneq ($(AUDIO_USE_STUB_HAL), true)
ifeq ($(TARGET_USES_QCOM_MM_AUDIO), true)

MY_LOCAL_PATH := $(call my-dir)

include $(MY_LOCAL_PATH)/hal/Android.mk
include $(MY_LOCAL_PATH)/hal/audio_extn/Android.mk
include $(MY_LOCAL_PATH)/audio-effects/Android.mk
include $(MY_LOCAL_PATH)/pal/Android.mk
include $(MY_LOCAL_PATH)/agm/Android.mk

endif
endif
endif
