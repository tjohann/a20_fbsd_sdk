Howto deploy u-boot
===================

NOTE: NOT VALID YET ... ONLY COPY-PASTE FROM MY LINUX VERSION (a20_sdk -> see github)


deploy to sdcard
----------------

	sudo dd if=u-boot-sunxi-with-spl.bin of=/dev/sdd bs=1024 seek=8


copy all to /mnt/bananapi/bananapi_kernel
-----------------------------------------

	sudo cp u-boot-sunxi-with-spl.bin boot.cmd boot.scr /mnt/bananapi/bananapi_kernel/
