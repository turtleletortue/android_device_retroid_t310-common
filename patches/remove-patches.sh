# Script to remove the patches previously applied
cd ../../../../

# Remove recovery patch
cd bootable/recovery/
git reset --hard
git clean -f -d
cd ../../

# Remove build/make patches (for building vbmeta_product and vbmeta_system_ext and making OTAs work)
cd build/make/
git reset --hard
git clean -f -d
cd ../../

# Remove patch to vendor/lineage since we have to use a prebuilt kernel
cd vendor/lineage/
git reset --hard
git clean -f -d
cd ../../

# Go back to patches folder
cd device/retroid/t310-common/patches/
