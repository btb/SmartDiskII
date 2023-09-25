# SmartDiskII

This is an attempt to clone the Apple "Liron" disk controller by replacing 
the IWM chip with the discrete components from the Disk II controller that 
the IWM was originally based on, and using firmware that has been
appropriately modified to use that hardware.

This is a work in progress and not yet a functioning design.

## Configuration

### ROM U10

The card is designed for a 2732 EPROM, but you can optionally use a larger 28-pin (E)EPROM, if you place the optional resistor R8, and take into consideration that because many of the address lines have different functions on different chips, they will be wired as follows:

pin 2 (A12): always low

pin 26 (A13): always high

pin 27 (A14 or /WE) always high

pin 1 (A14 or A15, or VPP, or Busy output on some EEPROMs) always high

### Disk II Operation

The card can optionally function as a plain Disk II controller. For this to work, the Disk II P6 firmware is placed in the U9 ROM at the lowest usable address space, and jumpers are added to always select this region when trying to boot a disk, regardless of which slot the card is in.

To use this option: Install optional resistors R5, R6, R7. Cut the traces that are shorting each pair of pads at JP5, JP6, and JP7, and install a 2x3 pin header in their place. With jumpers in place, the card will act as a SmartPort controller, and with jumpers removed the card will act as a Disk II controller.

Because there is only one drive connector, only a single Disk II drive can be connected. If you have the correct adapters ard/or a daisy-chainable drive, two drives can be made to work as long as the solder jumpers JP1, JP2, and JP3 are set specifically to match your cabling. Setting these jumpers incorrectly can result in damage to your SmartDisk II card, your drives, or both.
