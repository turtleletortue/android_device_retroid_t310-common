# Script to apply patches for building LineageOS for Retroid t310 devices
cd ../../../../

# Apply recovery patch
cd bootable/recovery/
patch -p1 < ../../device/retroid/t310-common/patches/bootable/recovery/0001-disable_touchscreen_in_recovery.patch
cd ../../

# Apply build/make patches (for building vbmeta_product and vbmeta_system_ext and making OTAs work)
cd build/make/
patch -p1 < ../../device/retroid/t310-common/patches/build/make/0001-make_vbmeta_system_ext_and_product_images.patch
patch -p1 < ../../device/retroid/t310-common/patches/build/make/0002-modify_releasetools_for_vbmeta_system_ext_and_product.patch
cd ../../

# Apply patch to vendor/lineage since we have to use a prebuilt kernel
cd vendor/lineage/
patch -p1 < ../../device/retroid/t310-common/patches/vendor/lineage/0001-disable_generated_kernel_includes.patch
cd ../../

# Go back to patches folder
cd device/retroid/t310-common/patches/
