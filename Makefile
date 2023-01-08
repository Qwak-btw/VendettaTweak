TARGET := iphone:clang:latest:14.0


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Vendetta

Vendetta_FILES = $(shell find Sources/Vendetta -name '*.swift') $(shell find Sources/VendettaC -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
Vendetta_SWIFTFLAGS = -ISources/VendettaC/include
Vendetta_CFLAGS = -fobjc-arc -ISources/VendettaC/include

include $(THEOS_MAKE_PATH)/tweak.mk
