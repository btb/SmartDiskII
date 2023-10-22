
        .org    $0000
        .byte   "SmartPort firmware written by Michael Askins.", $0a
        .byte   "SoftSP V6 conversion by MFA2 Labs. ", $0a
        .byte   "SmartDiskII integration by Bradley Bell. ", $0a
        .byte   "Inspiration from Adrian Black. ", $0a
        .byte   $00

        .res    $0100-*,$ff

        .incbin "BOOT0.bin"
        .incbin "BOOT0.bin"
        .incbin "BOOT0.bin"
        .incbin "BOOT0.bin"
        .incbin "BOOT0.bin"
        .incbin "BOOT0.bin"
        .incbin "BOOT0.bin"

        .res    $1000-*,$ff

        .incbin "SOFTSPROM_S1.bin", $0800, $800
        .incbin "SOFTSPROM_S1.bin", $0000, $800
        .incbin "SOFTSPROM_S2.bin", $0800, $800
        .incbin "SOFTSPROM_S2.bin", $0000, $800
        .incbin "SOFTSPROM_S3.bin", $0800, $800
        .incbin "SOFTSPROM_S3.bin", $0000, $800
        .incbin "SOFTSPROM_S4.bin", $0800, $800
        .incbin "SOFTSPROM_S4.bin", $0000, $800
        .incbin "SOFTSPROM_S5.bin", $0800, $800
        .incbin "SOFTSPROM_S5.bin", $0000, $800
        .incbin "SOFTSPROM_S6.bin", $0800, $800
        .incbin "SOFTSPROM_S6.bin", $0000, $800
        .incbin "SOFTSPROM_S7.bin", $0800, $800
        .incbin "SOFTSPROM_S7.bin", $0000, $800
