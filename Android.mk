#
# Copyright (C) 2022-2025 The LineageOS Project
# Copyright (C) 2021-2025 Miku UI
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),wayne)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

endif
