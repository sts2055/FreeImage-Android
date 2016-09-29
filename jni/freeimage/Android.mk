LOCAL_PATH := $(call my-dir)

include $(LOCAL_PATH)/Makefile.srcs

include $(CLEAR_VARS)
LOCAL_MODULE       := FreeImage
LOCAL_C_INCLUDES   := $(LOCAL_PATH)/Source \
                        $(LOCAL_PATH)/Source/Metadata \
                        $(LOCAL_PATH)/Source/FreeImageToolkit \
                        $(LOCAL_PATH)/Source/LibJPEG \
												$(LOCAL_PATH)/Source/LibJXR \
												$(LOCAL_PATH)/Source/LibJXR/common/include \
												$(LOCAL_PATH)/Source/LibJXR/jxrgluelib \
												$(LOCAL_PATH)/Source/LibJXR/image/sys \
												$(LOCAL_PATH)/Source/LibOpenJPEG \
                        $(LOCAL_PATH)/Source/LibPNG \
												$(LOCAL_PATH)/Source/LibRawLite \
                        $(LOCAL_PATH)/Source/LibRawLite/dcraw \
                        $(LOCAL_PATH)/Source/LibRawLite/internal \
                        $(LOCAL_PATH)/Source/LibRawLite/libraw \
                        $(LOCAL_PATH)/Source/LibRawLite/src \
                        $(LOCAL_PATH)/Source/LibTIFF4 \
												$(LOCAL_PATH)/Source/LibWebP/src/webp \
												$(LOCAL_PATH)/Source/LibWebP/src/utils \
                        $(LOCAL_PATH)/Source/OpenEXR \
                        $(LOCAL_PATH)/Source/OpenEXR/Half \
												$(LOCAL_PATH)/Source/OpenEXR/IexMath \
                        $(LOCAL_PATH)/Source/OpenEXR/Iex \
                        $(LOCAL_PATH)/Source/OpenEXR/IlmImf \
                        $(LOCAL_PATH)/Source/OpenEXR/IlmThread \
                        $(LOCAL_PATH)/Source/OpenEXR/Imath \
												$(LOCAL_PATH)/Source/ZLib
LOCAL_SRC_FILES    := $(SRCS)
LOCAL_ADDITIONAL_FLAGS := -O3 -fPIC -DNO_LCMS -D__ANSI__ -DDISABLE_PERF_MEASUREMENT
LOCAL_CPPFLAGS := $(LOCAL_ADDITIONAL_FLAGS) -std=c++98 -frtti -fexceptions
LOCAL_CFLAGS       := $(LOCAL_ADDITIONAL_FLAGS)
include $(BUILD_STATIC_LIBRARY)
