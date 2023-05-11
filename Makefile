TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = MobileSMS
THEOS_DEVICE_IP = 10.10.0.48
THEOS_PACKAGE_SCHEME = rootless

export SYSROOT = $(THEOS)/sdks/iPhoneOS15.5.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = iFlooder

iFlooder_FILES = Tweak.x
iFlooder_CFLAGS = -fobjc-arc
iFlooder_FILES_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk