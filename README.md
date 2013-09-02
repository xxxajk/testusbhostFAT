<pre>
* IMPORTANT! PLEASE USE Arduino 1.0.5 or better!
* Older versions HAVE MAJOR BUGS AND WILL NOT WORK AT ALL!
* Use of gcc-avr and lib-c that is newer than the Arduino version is even better.
*
* This sketch requires the following libraries:
* https://github.com/felis/USB_Host_Shield_2.0 Install as 'USB_Host_Shield_2_0'
* https://github.com/xxxajk/xmem2 Install as 'xmem', provides memory services.
* https://github.com/xxxajk/generic_storage provides access to FAT file system.
* https://github.com/xxxajk/RTClib provides access to DS1307, or fake clock.
*
* Optional, to use the Makefile (Recommended! See above!):
* https://github.com/xxxajk/Arduino_Makefile_master

This small sketch tests:
	USB host shield mass storage
	xmem2
	generic_storage FATfs
	RTClib (DS1307)

</pre>