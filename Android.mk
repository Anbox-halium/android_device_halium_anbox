#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter anbox_arm64 anbox_arm anbox_x86 anbox_x86_64,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

ifneq ($(filter anbox_arm64 anbox_arm,$(TARGET_DEVICE)),)
EGL_SYMLINK += $(TARGET_OUT_VENDOR)/lib/egl
$(EGL_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf ../../vendor_extra/lib/egl $@

ALL_DEFAULT_INSTALLED_MODULES += $(EGL_SYMLINK)

MTKOMXCORE_SYMLINK += $(TARGET_OUT_VENDOR)/etc/mtk_omx_core.cfg
$(MTKOMXCORE_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf ../../vendor_extra/etc/mtk_omx_core.cfg $@

ALL_DEFAULT_INSTALLED_MODULES += $(MTKOMXCORE_SYMLINK)
endif

ifneq ($(filter anbox_arm64,$(TARGET_DEVICE)),)
EGL64_SYMLINK += $(TARGET_OUT_VENDOR)/lib64/egl
$(EGL64_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf ../../vendor_extra/lib64/egl $@

ALL_DEFAULT_INSTALLED_MODULES += $(EGL64_SYMLINK)
endif
endif
