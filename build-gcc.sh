# Set defaults
wd=$(pwd)
out=$wd/out
BUILD="/home/galihgustip/lol"
# Set kernel source workspace
cd $BUILD
# Export ARCH <arm, arm64, x86, x86_64>
export ARCH=arm
# Export SUBARCH <arm, arm64, x86, x86_64>
export SUBARCH=arm
# Set kernal name
export LOCALVERSION=-wulan17
# Export Username
export KBUILD_BUILD_USER=wulan17
# Export Machine name
export KBUILD_BUILD_HOST=CactusOrg
# Compiler String
export CROSS_COMPILE=/home/galihgustip/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
# Make and Clean
make clean
make mrproper
# Make <defconfig>
make O=$out ARCH=arm cactus_defconfig
# Build Kernel
make O=$out ARCH=arm -j4
