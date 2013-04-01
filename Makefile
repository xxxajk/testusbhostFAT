BOARD = mega
PORT = /dev/ttyUSB0
LIB_DIRS =
LIB_DIRS += ../libraries/xmem 
LIB_DIRS += ../libraries/USB_Host_Shield_2.0
LIB_DIRS += ../libraries/generic_storage 
include ../_Makefile.master
