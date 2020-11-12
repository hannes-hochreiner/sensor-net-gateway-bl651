use nrf52810_hal::pac;

pub struct Radio<'a> {
    radio: &'a mut pac::RADIO
}

impl<'a> Radio<'a> {
    fn new(radio: &'a mut pac::RADIO) -> Radio<'a> {
        Radio {radio: radio}
    }

    fn init_reception(&self) {
        // POWER
        // 1 (default)

        // PCNF0
        // LFLEN: length field length in bits => 8
        // S0LEN: S0 length in bytes => 0 (default)
        // S1LEN: S1 length in bits => 0 (default)
        // S1INCL: 0 (default)
        // PLEN: 0 (default)
        self.radio.pcnf0.write(|w| unsafe { w.lflen().bits(8) });

        // PCNF1
        // MAXLEN: max length of payload packet => 255
        // STATLEN: 0 (default)
        // BALEN: base address length => 2
        // ENDIAN: 0 (default)
        // WHITEEN: enable packet whitening => 1
        self.radio.pcnf1.write(|w| unsafe {
            w.maxlen().bits(255)
             .balen().bits(2)
             .whiteen().bit(true)
        });

        // TXADDRESS
        // TXADDRESS: 0 (default)

        // CRCCNF
        // LEN: length => 3
        // SKIPADDR: 0 (default)
        self.radio.crccnf.write(|w| w.len().bits(3));

        // CRCPOLY
        // x24 + x10 + x9 + x6 + x4 + x3 + x + 1
        // CRCPOLY: 00000000_00000110_01011011
        self.radio.crcpoly.write(|w| unsafe { w.bits(0b00000000_00000110_01011011) });

        // Shortcuts
        // READY - START
        // ADDRESS - RSSISTART
        self.radio.shorts.write(|w| {
            w.ready_start().bit(true)
             .address_rssistart().bit(true)
        });
    }
}
