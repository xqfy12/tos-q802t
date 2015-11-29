# makefile template

# ro.product.brand
DEVICE_BRAND := zte
# ro.product.model
DEVICE_NAME := q802t
# ro.build.display.id
SW_VERSION := msm8226-userdebug 4.4.4 KTU84Q eng.weipan.20150513.111112 test-keys

# packages need to be decompiled
DECOMPILE_PACKAGES := framework.jar services.jar android.policy.jar framework2.jar telephony-common.jar ext.jar framework-qrom.jar

# custom resource package
CUSTOM_RESOURCE_PACKAGE := ramework-qrom-res.apk framework-zte-res.apk

# extra packages need to be decompiled
#EXTRA_DECOMPILE_PACKAGES := TOS:qgallery.apk TARGET:Camera2.apk framework-qrom.jar

# unpack boot.img tool
# support relative path & variables
# e.g. $(PORT_TOOLS)/unpackbootimg.sh
UNPACK_BOOTIMG_TOOL := default

# pack boot.img too
# support relative path & variables
# e.g. $(PORT_TOOLS)/mkbootimg.sh
PACK_BOOTIMG_TOOL := default

# device list that is suitable for. these devices will be added to the ota updater-script assertion statement
SUITABLE_DEVICES :=

# apktool/smali/baksmali selection
# support relative path & variables
# e.g. $(PORT_TOOLS)/apktool/apktool.jar
APKTOOL_JAR := $(PORT_TOOLS)/apktool/apktool-2.0.0.jar
SMALI_JAR := default
BAKSMALI_JAR := default

# aapt tool
# support relative path & variables
# e.g. $(PORT_TOOLS)/android/aapt
AAPT_PATH := default

##############################################################################
# The value is used to config the device's resolution.
# such as 1280x720, 1920x1080
#-----------------------------------------------------------------------------
RESOLUTION :=1280x720

##############################################################################
# The value is used to config whether to append device assertions to update_script
# such as true, false.
#-----------------------------------------------------------------------------
RECOVERY_DEVICE_ASSERT=false

##############################################################################
# The value is used to config the apps that should be modified 
#-----------------------------------------------------------------------------
#TOS_CUSTOM_APPS:=qphone qsystemui
include $(PORT_BUILD)/main.mk
