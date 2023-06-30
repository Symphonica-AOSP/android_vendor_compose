include vendor/lumina/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/lumina/config/BoardConfigQcom.mk
endif

include vendor/lumina/config/BoardConfigSoong.mk
