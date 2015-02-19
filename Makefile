#
# These are set for a mega 1280 + quadram plus my serial patch.
# If you lack quadram, or want to disable LFN, just change _FS_TINY=1 _USE_LFN=0
#
# If your board is a mega 2560 uncomment the following two lines
BOARD = mega2560
PROGRAMMER = wiring
# ...and then comment out the following two lines
#BOARD = mega
#PROGRAMMER = arduino
#BOARD = teensypp2
#BOARD = teensy3
#BOARD = teensy31

# set your Arduino tty port here
CPORT = /dev/ttyUSB1

# set your Arduino programming port or URL here
PORT = /dev/ttyUSB1


# this is the default for teensy
#USE_LAYOUT = LAYOUT_US_ENGLISH
#LAYOUT_US_ENGLISH
#LAYOUT_CANADIAN_FRENCH
#LAYOUT_CANADIAN_MULTILINGUAL
#LAYOUT_DANISH
#LAYOUT_FINNISH
#LAYOUT_FRENCH
#LAYOUT_FRENCH_BELGIAN
#LAYOUT_FRENCH_SWISS
#LAYOUT_GERMAN
#LAYOUT_GERMAN_MAC
#LAYOUT_GERMAN_SWISS
#LAYOUT_ICELANDIC
#LAYOUT_IRISH
#LAYOUT_ITALIAN
#LAYOUT_NORWEGIAN
#LAYOUT_PORTUGUESE
#LAYOUT_PORTUGUESE_BRAZILIAN
#LAYOUT_SPANISH
#LAYOUT_SPANISH_LATIN_AMERICA
#LAYOUT_SWEDISH
#LAYOUT_TURKISH
#LAYOUT_UNITED_KINGDOM
#LAYOUT_US_INTERNATIONAL

EXTRA_FLAGS = -D _USE_LFN=3

# change to 0 if you have quadram to take advantage of caching FAT
EXTRA_FLAGS += -D _FS_TINY=1


EXTRA_FLAGS += -D _MAX_SS=512


# Don't worry if you don't have external RAM, xmem2 detects this situation.
# You *WILL* be wanting to get some kind of external ram on your mega in order to
# do anything that is intense.
ifneq "$(BOARD)" "teensy31"
ifneq "$(BOARD)" "teensy3"
EXTRA_FLAGS += -D EXT_RAM_STACK=1
EXTRA_FLAGS += -D EXT_RAM_HEAP=1
endif
endif

#
# Advanced debug on Serial3
#

# uncomment the next two to enable debug on Serial3
EXTRA_FLAGS += -D USB_HOST_SERIAL=Serial
#EXTRA_FLAGS += -D DEBUG_USB_HOST

# And finally, the part that brings everything together for you.
include ../Arduino_Makefile_master/_Makefile.master
