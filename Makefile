ARCHS = arm64 arm64e
TARGET = iphone:clang:15.6
FINALPACKAGE = 1
PREFIX = $(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/
THEOS_PACKAGE_SCHEME=rootless
include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libpddokdo
libpddokdo_FILES = libpddokdo.m
libpddokdo_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/library.mk

after-install::
	install.exec "killall -9 SpringBoard"
