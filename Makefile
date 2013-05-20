BOARD = mega
PORT = /dev/ttyUSB0
EXTRA_FLAGS = -D HAVEXMEM=1 -D DISABLE_SERIAL1 -D DISABLE_SERIAL2 -D DISABLE_SERIAL3
#OPT_FLAGS = -Os -fno-exceptions -ffunction-sections -fdata-sections -MMD
LIB_DIRS =
LIB_DIRS += ../libraries/xmem 
LIB_DIRS += ../libraries/USB_Host_Shield_2.0
LIB_DIRS += ../libraries/generic_storage 
include ../_Makefile.master
