FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.19:${THISDIR}/fragments:"

SRC_URI += " \
    file://0001-Add-OV5640-camera-support.patch \
    file://0003-Updated-wlink8-support.patch \
    file://0004-Update-overlay-support-for-the-tlv320aic3x-audio-cod.patch \
    file://0005-Update-sdio-wlink8-for-rpi-cm.patch \
    file://0006-Add-support-for-ST-L3GD20H-and-LSM303D-input-drivers.patch \
    file://0007-Add-support-for-IMU-over-SPI.patch \
    file://0008-Update-mmc-frequency-for-wilink8-overlay.patch \
    file://0009-Add-wlink8-and-sound-codec-overlays-to-the-default-b.patch \
    file://0010-Add-property-to-sdio-wlink8.patch \
    file://fragment.cfg \
"

SRC_URI_append = " \
    file://enable_6222D-UUB.cfg \
    file://enable_SI7020.cfg \ 
    file://enable_bme680.cfg \
    file://enable_bmi055.cfg \
    file://enable_bmi160.cfg \
"

do_kernel_configme_append () {
    cat ${WORKDIR}/*.cfg >> ${WORKDIR}/defconfig
}

# Set contiguous memory allocation size for video streaming
PITFT_PARAMS_append = "\n# Uncomment and add inline to optimize memory for streaming video\n# cma=64M"