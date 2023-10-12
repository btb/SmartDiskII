# SmartDiskII

The SmartDiskII is basically an Apple "Liron" disk controller with the IWM chip
replaced by the discrete components from the Disk II controller, which
the IWM was originally based on, and using firmware (i.e. SoftSP) which
has been appropriately modified to use those components instead of the IWM.

Because the SoftSP firmware (as of v6) is slot-dependent, an additional
set of latches is added to automatically select the appropriate variation
of SoftSP, depending on which slot the SmartDiskII is placed in.

## Configuration

### Disk II Operation

The card can optionally function as a plain Disk II controller. For this to work, the Disk II P6 firmware is placed in the lowest region of the boot ROM. Closing jumper JP8 will select that boot code, disabling the
SmartPort code.

Because there is only one drive connector, only a single Disk II drive can be connected. If you have the correct adapters ard/or a daisy-chainable drive, two drives can be made to work as long as all of the the solder jumpers are set specifically to match your cabling. Setting these jumpers incorrectly can result in damage to your SmartDisk II card, your drives, or both.
