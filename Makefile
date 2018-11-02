######################################
# Makefile by CubeMX2Makefile.py
######################################

######################################
# target
######################################
TARGET = STM32F746G-DISCO

######################################
# building variables
######################################
# debug build?
DEBUG = 1
# optimization
OPT = -O0

#######################################
# pathes
#######################################
# Build path
BUILD_DIR = build

######################################
# source
######################################
C_SOURCES = \
  STemWin/Target/HW_Init.c \
  STemWin/Target/STemwin_wrapper.c \
  STemWin/Target/GUIConf.c \
  STemWin/App/GUI_App.c \
  Core/Src/stm32f7xx_it.c \
  Core/Src/stm32f7xx_hal_msp.c \
  Core/Src/stm32f7xx_hal_timebase_TIM.c \
  Core/Src/freertos.c \
  Core/Src/main.c \
  Core/Src/system_stm32f7xx.c \
  LIBJPEG/jdata_conf.c \
  LIBJPEG/App/libjpeg.c \
  MBEDTLS/net_sockets.c \
  MBEDTLS/App/mbedtls.c \
  USB_HOST/Target/usbh_conf.c \
  USB_HOST/Target/usbh_platform.c \
  USB_HOST/App/usb_host.c \
  PDM2PCM/App/pdm2pcm.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cortex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc_ex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spdifrx.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dsi.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sdram.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma2d.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma_ex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sd.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc_ex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_qspi.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_eth.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi_ex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_usb.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash_ex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim_ex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc_ex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai_ex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_fmc.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_sdmmc.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hcd.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc_ex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c_ex.c \
  Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi.c \
  FATFS/Target/fatfs_platform.c \
  FATFS/Target/bsp_driver_sd.c \
  FATFS/Target/sdram_diskio.c \
  FATFS/Target/bsp_driver_sdram.c \
  FATFS/Target/sd_diskio.c \
  FATFS/App/fatfs.c \
  LWIP/Target/ethernetif.c \
  LWIP/Target/syscalls.c \
  LWIP/App/lwip.c \
  Middlewares/Third_Party/FatFs/src/ff_gen_drv.c \
  Middlewares/Third_Party/FatFs/src/diskio.c \
  Middlewares/Third_Party/FatFs/src/ff.c \
  Middlewares/Third_Party/FatFs/src/option/syscall.c \
  Middlewares/Third_Party/LibJPEG/source/jcmaster.c \
  Middlewares/Third_Party/LibJPEG/source/jdatadst.c \
  Middlewares/Third_Party/LibJPEG/source/jdapistd.c \
  Middlewares/Third_Party/LibJPEG/source/jquant1.c \
  Middlewares/Third_Party/LibJPEG/source/jdatasrc.c \
  Middlewares/Third_Party/LibJPEG/source/jdarith.c \
  Middlewares/Third_Party/LibJPEG/source/jfdctflt.c \
  Middlewares/Third_Party/LibJPEG/source/jcinit.c \
  Middlewares/Third_Party/LibJPEG/source/jfdctfst.c \
  Middlewares/Third_Party/LibJPEG/source/jccoefct.c \
  Middlewares/Third_Party/LibJPEG/source/jidctflt.c \
  Middlewares/Third_Party/LibJPEG/source/jdmarker.c \
  Middlewares/Third_Party/LibJPEG/source/jcapistd.c \
  Middlewares/Third_Party/LibJPEG/source/jddctmgr.c \
  Middlewares/Third_Party/LibJPEG/source/jdcoefct.c \
  Middlewares/Third_Party/LibJPEG/source/jccolor.c \
  Middlewares/Third_Party/LibJPEG/source/jcmarker.c \
  Middlewares/Third_Party/LibJPEG/source/jctrans.c \
  Middlewares/Third_Party/LibJPEG/source/jchuff.c \
  Middlewares/Third_Party/LibJPEG/source/jdmaster.c \
  Middlewares/Third_Party/LibJPEG/source/jaricom.c \
  Middlewares/Third_Party/LibJPEG/source/jcsample.c \
  Middlewares/Third_Party/LibJPEG/source/jcparam.c \
  Middlewares/Third_Party/LibJPEG/source/jdapimin.c \
  Middlewares/Third_Party/LibJPEG/source/jerror.c \
  Middlewares/Third_Party/LibJPEG/source/jfdctint.c \
  Middlewares/Third_Party/LibJPEG/source/jcomapi.c \
  Middlewares/Third_Party/LibJPEG/source/jdinput.c \
  Middlewares/Third_Party/LibJPEG/source/jcarith.c \
  Middlewares/Third_Party/LibJPEG/source/jdpostct.c \
  Middlewares/Third_Party/LibJPEG/source/jutils.c \
  Middlewares/Third_Party/LibJPEG/source/jdtrans.c \
  Middlewares/Third_Party/LibJPEG/source/jidctfst.c \
  Middlewares/Third_Party/LibJPEG/source/jcdctmgr.c \
  Middlewares/Third_Party/LibJPEG/source/jdmerge.c \
  Middlewares/Third_Party/LibJPEG/source/jmemnobs.c \
  Middlewares/Third_Party/LibJPEG/source/jdmainct.c \
  Middlewares/Third_Party/LibJPEG/source/jdhuff.c \
  Middlewares/Third_Party/LibJPEG/source/jdcolor.c \
  Middlewares/Third_Party/LibJPEG/source/jcmainct.c \
  Middlewares/Third_Party/LibJPEG/source/jcapimin.c \
  Middlewares/Third_Party/LibJPEG/source/jmemmgr.c \
  Middlewares/Third_Party/LibJPEG/source/jcprepct.c \
  Middlewares/Third_Party/LibJPEG/source/jquant2.c \
  Middlewares/Third_Party/LibJPEG/source/jidctint.c \
  Middlewares/Third_Party/LibJPEG/source/jdsample.c \
  Middlewares/Third_Party/FreeRTOS/Source/list.c \
  Middlewares/Third_Party/FreeRTOS/Source/timers.c \
  Middlewares/Third_Party/FreeRTOS/Source/tasks.c \
  Middlewares/Third_Party/FreeRTOS/Source/event_groups.c \
  Middlewares/Third_Party/FreeRTOS/Source/croutine.c \
  Middlewares/Third_Party/FreeRTOS/Source/queue.c \
  Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c \
  Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c \
  Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1/port.c \
  Middlewares/Third_Party/mbedTLS/library/sha256.c \
  Middlewares/Third_Party/mbedTLS/library/sha512.c \
  Middlewares/Third_Party/mbedTLS/library/xtea.c \
  Middlewares/Third_Party/mbedTLS/library/des.c \
  Middlewares/Third_Party/mbedTLS/library/x509_crl.c \
  Middlewares/Third_Party/mbedTLS/library/camellia.c \
  Middlewares/Third_Party/mbedTLS/library/pem.c \
  Middlewares/Third_Party/mbedTLS/library/pkcs11.c \
  Middlewares/Third_Party/mbedTLS/library/entropy_poll.c \
  Middlewares/Third_Party/mbedTLS/library/rsa.c \
  Middlewares/Third_Party/mbedTLS/library/memory_buffer_alloc.c \
  Middlewares/Third_Party/mbedTLS/library/cipher.c \
  Middlewares/Third_Party/mbedTLS/library/bignum.c \
  Middlewares/Third_Party/mbedTLS/library/ccm.c \
  Middlewares/Third_Party/mbedTLS/library/pk_wrap.c \
  Middlewares/Third_Party/mbedTLS/library/pkwrite.c \
  Middlewares/Third_Party/mbedTLS/library/pkparse.c \
  Middlewares/Third_Party/mbedTLS/library/asn1write.c \
  Middlewares/Third_Party/mbedTLS/library/ssl_srv.c \
  Middlewares/Third_Party/mbedTLS/library/md4.c \
  Middlewares/Third_Party/mbedTLS/library/ctr_drbg.c \
  Middlewares/Third_Party/mbedTLS/library/aes.c \
  Middlewares/Third_Party/mbedTLS/library/oid.c \
  Middlewares/Third_Party/mbedTLS/library/ecdsa.c \
  Middlewares/Third_Party/mbedTLS/library/ssl_ticket.c \
  Middlewares/Third_Party/mbedTLS/library/cipher_wrap.c \
  Middlewares/Third_Party/mbedTLS/library/blowfish.c \
  Middlewares/Third_Party/mbedTLS/library/ripemd160.c \
  Middlewares/Third_Party/mbedTLS/library/md2.c \
  Middlewares/Third_Party/mbedTLS/library/platform.c \
  Middlewares/Third_Party/mbedTLS/library/ecp_curves.c \
  Middlewares/Third_Party/mbedTLS/library/base64.c \
  Middlewares/Third_Party/mbedTLS/library/version.c \
  Middlewares/Third_Party/mbedTLS/library/ecjpake.c \
  Middlewares/Third_Party/mbedTLS/library/asn1parse.c \
  Middlewares/Third_Party/mbedTLS/library/x509.c \
  Middlewares/Third_Party/mbedTLS/library/cmac.c \
  Middlewares/Third_Party/mbedTLS/library/ecp.c \
  Middlewares/Third_Party/mbedTLS/library/sha1.c \
  Middlewares/Third_Party/mbedTLS/library/md.c \
  Middlewares/Third_Party/mbedTLS/library/md_wrap.c \
  Middlewares/Third_Party/mbedTLS/library/arc4.c \
  Middlewares/Third_Party/mbedTLS/library/havege.c \
  Middlewares/Third_Party/mbedTLS/library/x509_csr.c \
  Middlewares/Third_Party/mbedTLS/library/ecdh.c \
  Middlewares/Third_Party/mbedTLS/library/threading.c \
  Middlewares/Third_Party/mbedTLS/library/pkcs5.c \
  Middlewares/Third_Party/mbedTLS/library/ssl_tls.c \
  Middlewares/Third_Party/mbedTLS/library/hmac_drbg.c \
  Middlewares/Third_Party/mbedTLS/library/x509_create.c \
  Middlewares/Third_Party/mbedTLS/library/entropy.c \
  Middlewares/Third_Party/mbedTLS/library/version_features.c \
  Middlewares/Third_Party/mbedTLS/library/ssl_cache.c \
  Middlewares/Third_Party/mbedTLS/library/certs.c \
  Middlewares/Third_Party/mbedTLS/library/x509write_crt.c \
  Middlewares/Third_Party/mbedTLS/library/debug.c \
  Middlewares/Third_Party/mbedTLS/library/ssl_cookie.c \
  Middlewares/Third_Party/mbedTLS/library/aesni.c \
  Middlewares/Third_Party/mbedTLS/library/dhm.c \
  Middlewares/Third_Party/mbedTLS/library/ssl_cli.c \
  Middlewares/Third_Party/mbedTLS/library/ssl_ciphersuites.c \
  Middlewares/Third_Party/mbedTLS/library/timing.c \
  Middlewares/Third_Party/mbedTLS/library/pkcs12.c \
  Middlewares/Third_Party/mbedTLS/library/x509write_csr.c \
  Middlewares/Third_Party/mbedTLS/library/x509_crt.c \
  Middlewares/Third_Party/mbedTLS/library/padlock.c \
  Middlewares/Third_Party/mbedTLS/library/gcm.c \
  Middlewares/Third_Party/mbedTLS/library/pk.c \
  Middlewares/Third_Party/mbedTLS/library/error.c \
  Middlewares/Third_Party/mbedTLS/library/md5.c \
  Middlewares/Third_Party/LwIP/src/apps/mqtt/mqtt.c \
  Middlewares/Third_Party/LwIP/src/core/def.c \
  Middlewares/Third_Party/LwIP/src/core/netif.c \
  Middlewares/Third_Party/LwIP/src/core/init.c \
  Middlewares/Third_Party/LwIP/src/core/tcp_out.c \
  Middlewares/Third_Party/LwIP/src/core/mem.c \
  Middlewares/Third_Party/LwIP/src/core/inet_chksum.c \
  Middlewares/Third_Party/LwIP/src/core/udp.c \
  Middlewares/Third_Party/LwIP/src/core/ip.c \
  Middlewares/Third_Party/LwIP/src/core/pbuf.c \
  Middlewares/Third_Party/LwIP/src/core/timeouts.c \
  Middlewares/Third_Party/LwIP/src/core/sys.c \
  Middlewares/Third_Party/LwIP/src/core/stats.c \
  Middlewares/Third_Party/LwIP/src/core/raw.c \
  Middlewares/Third_Party/LwIP/src/core/memp.c \
  Middlewares/Third_Party/LwIP/src/core/tcp_in.c \
  Middlewares/Third_Party/LwIP/src/core/dns.c \
  Middlewares/Third_Party/LwIP/src/core/tcp.c \
  Middlewares/Third_Party/LwIP/src/core/ipv4/autoip.c \
  Middlewares/Third_Party/LwIP/src/core/ipv4/igmp.c \
  Middlewares/Third_Party/LwIP/src/core/ipv4/dhcp.c \
  Middlewares/Third_Party/LwIP/src/core/ipv4/etharp.c \
  Middlewares/Third_Party/LwIP/src/core/ipv4/ip4_addr.c \
  Middlewares/Third_Party/LwIP/src/core/ipv4/ip4.c \
  Middlewares/Third_Party/LwIP/src/core/ipv4/icmp.c \
  Middlewares/Third_Party/LwIP/src/core/ipv4/ip4_frag.c \
  Middlewares/Third_Party/LwIP/src/core/ipv6/mld6.c \
  Middlewares/Third_Party/LwIP/src/core/ipv6/ip6_frag.c \
  Middlewares/Third_Party/LwIP/src/core/ipv6/icmp6.c \
  Middlewares/Third_Party/LwIP/src/core/ipv6/ethip6.c \
  Middlewares/Third_Party/LwIP/src/core/ipv6/inet6.c \
  Middlewares/Third_Party/LwIP/src/core/ipv6/ip6_addr.c \
  Middlewares/Third_Party/LwIP/src/core/ipv6/ip6.c \
  Middlewares/Third_Party/LwIP/src/core/ipv6/nd6.c \
  Middlewares/Third_Party/LwIP/src/core/ipv6/dhcp6.c \
  Middlewares/Third_Party/LwIP/src/api/api_lib.c \
  Middlewares/Third_Party/LwIP/src/api/netbuf.c \
  Middlewares/Third_Party/LwIP/src/api/api_msg.c \
  Middlewares/Third_Party/LwIP/src/api/netdb.c \
  Middlewares/Third_Party/LwIP/src/api/sockets.c \
  Middlewares/Third_Party/LwIP/src/api/netifapi.c \
  Middlewares/Third_Party/LwIP/src/api/err.c \
  Middlewares/Third_Party/LwIP/src/api/tcpip.c \
  Middlewares/Third_Party/LwIP/src/netif/lowpan6.c \
  Middlewares/Third_Party/LwIP/src/netif/ethernet.c \
  Middlewares/Third_Party/LwIP/src/netif/slipif.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/pppos.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/multilink.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/fsm.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/pppcrypt.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/ipcp.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/ppp.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/pppol2tp.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/auth.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/eap.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/chap-md5.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/chap_ms.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/vj.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/magic.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/ccp.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/pppapi.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/pppoe.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/mppe.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/demand.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/eui64.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/lcp.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/chap-new.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/ipv6cp.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/upap.c \
  Middlewares/Third_Party/LwIP/src/netif/ppp/utils.c \
  Middlewares/Third_Party/LwIP/system/OS/sys_arch.c \
  Middlewares/ST/STemWin/OS/GUI_X_OS.c \
  Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.c \
  Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.c \
  Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.c \
  Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.c \
  Middlewares/ST/STM32_USB_Host_Library/Class/HID/Src/usbh_hid_keybd.c \
  Middlewares/ST/STM32_USB_Host_Library/Class/HID/Src/usbh_hid.c \
  Middlewares/ST/STM32_USB_Host_Library/Class/HID/Src/usbh_hid_mouse.c \
  Middlewares/ST/STM32_USB_Host_Library/Class/HID/Src/usbh_hid_parser.c  
ASM_SOURCES = \
  startup/startup_stm32f746xx.s

#######################################
# binaries
#######################################
CC = arm-none-eabi-gcc
AS = arm-none-eabi-gcc -x assembler-with-cpp
CP = arm-none-eabi-objcopy
AR = arm-none-eabi-ar
SZ = arm-none-eabi-size
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S
 
#######################################
# CFLAGS
#######################################
# macros for gcc
AS_DEFS =
C_DEFS = -DMBEDTLS_CONFIG_FILE="mbedtls_config.h" -D__weak="__attribute__\(\(weak\)\)" -D__packed="__attribute__\(\(__packed__\)\)" -DUSE_HAL_DRIVER -DSTM32F746xx
# includes for gcc
AS_INCLUDES =
C_INCLUDES = -ISTemWin/Target
C_INCLUDES += -ISTemWin/App
C_INCLUDES += -ICore/Inc
C_INCLUDES += -ILIBJPEG
C_INCLUDES += -ILIBJPEG/App
C_INCLUDES += -IMBEDTLS
C_INCLUDES += -IMBEDTLS/App
C_INCLUDES += -IUSB_HOST/Target
C_INCLUDES += -IUSB_HOST/App
C_INCLUDES += -IPDM2PCM/App
C_INCLUDES += -IDrivers/CMSIS/Include
C_INCLUDES += -IDrivers/CMSIS/Device/ST/STM32F7xx/Include
C_INCLUDES += -IDrivers/STM32F7xx_HAL_Driver/Inc
C_INCLUDES += -IDrivers/STM32F7xx_HAL_Driver/Inc/Legacy
C_INCLUDES += -IFATFS/Target
C_INCLUDES += -IFATFS/App
C_INCLUDES += -ILWIP/Target
C_INCLUDES += -ILWIP/App
C_INCLUDES += -IMiddlewares/Third_Party/FatFs/src
C_INCLUDES += -IMiddlewares/Third_Party/LibJPEG/include
C_INCLUDES += -IMiddlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS
C_INCLUDES += -IMiddlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1
C_INCLUDES += -IMiddlewares/Third_Party/FreeRTOS/Source/include
C_INCLUDES += -IMiddlewares/Third_Party/mbedTLS/include/mbedtls
C_INCLUDES += -IMiddlewares/Third_Party/LwIP/src/include/posix
C_INCLUDES += -IMiddlewares/Third_Party/LwIP/src/include/posix/sys
C_INCLUDES += -IMiddlewares/Third_Party/LwIP/src/include/netif
C_INCLUDES += -IMiddlewares/Third_Party/LwIP/src/include/netif/ppp
C_INCLUDES += -IMiddlewares/Third_Party/LwIP/src/include/lwip
C_INCLUDES += -IMiddlewares/Third_Party/LwIP/src/include/lwip/apps
C_INCLUDES += -IMiddlewares/Third_Party/LwIP/src/include/lwip/priv
C_INCLUDES += -IMiddlewares/Third_Party/LwIP/src/include/lwip/prot
C_INCLUDES += -IMiddlewares/Third_Party/LwIP/system/arch
C_INCLUDES += -IMiddlewares/ST/STM32_Audio/Addons/PDM/Inc
C_INCLUDES += -IMiddlewares/ST/STemWin/inc
C_INCLUDES += -IMiddlewares/ST/STM32_USB_Host_Library/Core/Inc
C_INCLUDES += -IMiddlewares/ST/STM32_USB_Host_Library/Class/HID/Inc
# compile gcc flags
ASFLAGS = -mthumb -mcpu=cortex-m7 -mfpu=fpv4-sp-d16 -mfloat-abi=hard $(AS_DEFS) $(AS_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections
CFLAGS = -mthumb -mcpu=cortex-m7 -mfpu=fpv4-sp-d16 -mfloat-abi=hard $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections
ifeq ($(DEBUG), 1)
CFLAGS += -g -gdwarf-2
endif
# Generate dependency information
CFLAGS += -std=c99 -MD -MP -MF $(BUILD_DIR)/.dep/$(@F).d

#######################################
# LDFLAGS
#######################################
# link script
LDSCRIPT = STM32F746NGHx_FLASH.ld
# libraries
LIBS =
LIBDIR =
LDFLAGS = -mthumb -mcpu=cortex-m7 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -specs=nosys.specs -specs=nano.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections

# default action: build all
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin

#######################################
# build the application
#######################################
# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))
# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.c=.lst)) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	$(AS) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(HEX) $< $@
	
$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@	
	
$(BUILD_DIR):
	mkdir -p $@/.dep

#######################################
# clean up
#######################################
clean:
	-rm -fR $(BUILD_DIR)
  
#######################################
# dependencies
#######################################
-include $(shell mkdir -p $(BUILD_DIR)/.dep 2>/dev/null) $(wildcard $(BUILD_DIR)/.dep/*)

.PHONY: clean all

# *** EOF ***