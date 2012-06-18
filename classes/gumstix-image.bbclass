LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"

EXTRA_IMAGE_FEATURES += "package-management"

IMAGE_EXTRA_INSTALL ?= ""

IMAGE_INSTALL = "task-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} ${CORE_IMAGE_EXTRA_INSTALL} ${IMAGE_EXTRA_INSTALL}"

inherit core-image

IMAGE_ROOTFS_SIZE = "8192"
