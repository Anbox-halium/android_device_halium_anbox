#
# Copyright (C) 2018-2019 The LineageOS Project
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

PRODUCT_MAKEFILES := \
    lineage_anbox_arm64:$(LOCAL_DIR)/anbox_arm64/lineage_anbox_arm64.mk \
    lineage_anbox_arm:$(LOCAL_DIR)/anbox_arm/lineage_anbox_arm.mk \
    lineage_anbox_x86:$(LOCAL_DIR)/anbox_x86/lineage_anbox_x86.mk \
    lineage_anbox_x86_64:$(LOCAL_DIR)/anbox_x86_64/lineage_anbox_x86_64.mk

COMMON_LUNCH_CHOICES := \
    lineage_anbox_arm64-user \
    lineage_anbox_arm64-userdebug \
    lineage_anbox_arm64-eng \
    lineage_anbox_arm-user \
    lineage_anbox_arm-userdebug \
    lineage_anbox_arm-eng \
    lineage_anbox_x86-user \
    lineage_anbox_x86-userdebug \
    lineage_anbox_x86-eng \
    lineage_anbox_x86_64-user \
    lineage_anbox_x86_64-userdebug \
    lineage_anbox_x86_64-eng
