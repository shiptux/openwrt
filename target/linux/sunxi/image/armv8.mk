define Device/sun60i-a733
  SOC := sun60i-a733
  KERNEL_NAME := Image
  # Kernel 6.12 has no sun60i-a733 dts; these boards boot with the kernel
  # and dtb from build/sources, so ship a plain gzip'd Image (no FIT/dtb)
  # and skip per-device images. Only the generic rootfs.tar.gz is consumed.
  KERNEL := kernel-bin | gzip
  IMAGES :=
endef

define Device/radxa_cubie-a7a
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := Cubie A7A (rootfs-only; kernel/dtb from build/sources)
  SUPPORTED_DEVICES += radxa-cubie-a7a sun60i-a733-radxa-a7a
  $(Device/sun60i-a733)
endef
TARGET_DEVICES += radxa_cubie-a7a

define Device/demo_aiot_a733
  DEVICE_VENDOR := Allwinner
  DEVICE_MODEL := DEMO AIOT A733 (rootfs-only; kernel/dtb from build/sources)
  SUPPORTED_DEVICES += demo-aiot-a733 sun60i-a733-demo-aiot allwinner-a733-demo-aiot
  $(Device/sun60i-a733)
endef
TARGET_DEVICES += demo_aiot_a733
