# Build Firmware

SmartDiskII.bin: SmartDiskII.o
	ld65 --config apple2-asm.cfg -o "$@" "$<"

SmartDiskII.o: SmartDiskII.s BOOT0.bin \
		SOFTSPROM_S1.bin SOFTSPROM_S2.bin SOFTSPROM_S3.bin SOFTSPROM_S4.bin \
		SOFTSPROM_S5.bin SOFTSPROM_S6.bin SOFTSPROM_S7.bin

	ca65 --target apple2 -o "$@" "$<"

clean:
	rm -f SmartDiskII.bin SmartDiskII.o
