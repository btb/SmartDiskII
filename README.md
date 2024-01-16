# SmartDiskII

The SmartDiskII is basically an Apple "Liron" disk controller with the IWM chip
replaced by the discrete components from the Disk II controller, which
the IWM was originally based on, and using firmware (i.e. SoftSP) which
has been appropriately modified to use those components instead of the IWM.

![image info](SmartDiskII.png)

[Interactive BOM](https://btb.github.io/SmartDiskII/bom/SmartDiskII.html)

## SmartPort Operation

Because the SoftSP firmware (as of v6) is slot-dependent, a different copy is
required for each slot the card may be used in. The slot 1 version is in the 1xxx
region of the EPROM, slot 2 version is at 2xxx, etc.
A set of latches (U9) is used to automatically select the appropriate region
depending on which slot the SmartDiskII is placed in.

## Disk II Operation (experimental)

The card is designed to also work as a regular Disk II controller, though 
results can be inconsistent depending on the components used. Failures of 
this system can lead to corrupted floppy disks.

For this reason it is recommended to use true TTL ICs for all of the logic 
chips. In addition, for the chip at U5, Apple's original Disk II 
controller design called for a 9334 rather than a 74LS259. Indeed, using a 
9334 does appear to make the circuit more tolerant of these timing issues.  

5.25 Floppy operation works by having the Disk II boot rom in the 0xxx
region of the EPROM, and therefore active while U9 is held in
reset. Plugging a floppy drive into the DRV1 connector should automatically
activate the correct firmware because of the presence of +5V on pin 12, but
because some devices do not have that pin connected,
you can also close jumper JP8 to force the card into Disk II boot mode.

## Configuration

U8 is the standard [16-sector Disk II state machine data, P6](firmware/341-0128_P6A.bin), on a 2716-compatible EPROM.

U11 is a special combination of the Disk II boot ROM and the SoftSP firmware, [SmartDiskII.bin](firmware/SmartDiskII.bin).
