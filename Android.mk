LOCAL_PATH := $(call my-dir)

##############################################################################
# MTK BT chip init library
# libbluetooth_mtk
##############################################################################
include $(CLEAR_VARS) 

LOCAL_SRC_FILES += libbluetooth_mtk.so:system/lib/libbluetooth_mtk.so
LOCAL_SRC_FILES += libbluetooth_mtk.so:obj/SHARED_LIBRARIES/libbluedroid_intermediates/LINKED/libbluetooth_mtk.so
LOCAL_SRC_FILES += libbluetooth_mtk.so:symbols/system/lib/libbluetooth_mtk.so
LOCAL_SRC_FILES += libbluetooth_mtk.so:obj/lib/libbluetooth_mtk.so
LOCAL_SRC_FILES += export_includes:obj/SHARED_LIBRARIES/libbluedroid_intermediates/export_includes

include $(WMT_PREBUILT)

##############################################################################
# MTK BT DRIVER SOLUTION
# libbt-vendor
##############################################################################
include $(CLEAR_VARS) 

LOCAL_SRC_FILES += libbt-vendor.so:system/lib/libbt-vendor.so
LOCAL_SRC_FILES += libbt-vendor.so:obj/SHARED_LIBRARIES/libbt-vendor_intermediates/LINKED/libbt-vendor.so
LOCAL_SRC_FILES += libbt-vendor.so:symbols/system/lib/libbt-vendor.so
LOCAL_SRC_FILES += libbt-vendor.so:obj/lib/libbt-vendor.so
LOCAL_SRC_FILES += export_includes:obj/SHARED_LIBRARIES/libbt-vendor_intermediates/export_includes

include $(WMT_PREBUILT)


###########################################################################
# INSTALL BT FIRMWARE
###########################################################################
include $(CLEAR_VARS)
LOCAL_MODULE := MTK_MT6622_E2_Patch.nb0
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/firmware
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

###########################################################################
# libbt-utils & libbt-hci
###########################################################################
include $(CLEAR_VARS) 

LOCAL_SRC_FILES += libbt-utils.so:system/lib/libbt-utils.so
LOCAL_SRC_FILES += libbt-hci.so:system/lib/libbt-hci.so

include $(WMT_PREBUILT)