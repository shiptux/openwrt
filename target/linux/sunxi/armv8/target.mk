# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

ARCH:=aarch64
BOARDNAME:=Allwinner ARMv8 SoCs (64-bit)
CPU_TYPE:=generic
KERNELNAME:=Image
FEATURES+=fpu

define Target/Description
	Build firmware images for 64-bit Allwinner ARMv8 devices. Userspace uses a
	generic AArch64 baseline so it can run on both Cortex-A55 and Cortex-A76
	cores.
endef
