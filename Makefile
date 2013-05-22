#
# These are set for a mega 1280 + quadram plus my serial patch.
# If you lack quadram, or want to disable LFN, just change _FS_TINY=1 _USE_LFN=0
#

BOARD = mega
PORT = /dev/ttyUSB0
EXTRA_FLAGS = -D HAVEXMEM=1
EXTRA_FLAGS += -D EXT_RAM_STACK=1
EXTRA_FLAGS += -D EXT_RAM_HEAP=1
EXTRA_FLAGS += -D _FS_TINY=0
EXTRA_FLAGS += -D _USE_LFN=1
EXTRA_FLAGS += -D DISABLE_SERIAL1
EXTRA_FLAGS += -D DISABLE_SERIAL2
EXTRA_FLAGS += -D DISABLE_SERIAL3
#OPT_FLAGS = -Os -fno-exceptions -ffunction-sections -fdata-sections -MMD
LIB_DIRS =
LIB_DIRS += ../libraries/xmem
LIB_DIRS += ../libraries/USB_Host_Shield_2.0
LIB_DIRS += ../libraries/generic_storage
include ../_Makefile.master
