#![no_std]
#![no_main]

// pick a panicking behavior
use panic_halt as _; // you can put a breakpoint on `rust_begin_unwind` to catch panics
// use panic_abort as _; // requires nightly
// use panic_itm as _; // logs messages over ITM; requires ITM support
// use panic_semihosting as _; // logs messages to the host stderr; requires a debugger

// use cortex_m::asm;
use cortex_m_rt::entry;
use nrf52810_hal as hal;
use nrf52810_hal::gpio::Level;
use nrf52810_hal::prelude::OutputPin;
use nrf52810_hal::prelude::_embedded_hal_blocking_delay_DelayMs;
use core::fmt::Write;
// use lsm303agr::{AccelOutputDataRate, Lsm303agr};
use core::format_args;
mod sht3;

#[entry]
fn main() -> ! {
    // asm::nop(); // To not have main optimize to abort in release mode, remove when you add code
    let p = hal::pac::Peripherals::take().unwrap();
    let cp = hal::pac::CorePeripherals::take().unwrap();
    let port0 = hal::gpio::p0::Parts::new(p.P0);
    let mut led_red = port0.p0_23.into_push_pull_output(Level::Low);
    let mut led_green = port0.p0_24.into_push_pull_output(Level::Low);
    let mut delay = hal::delay::Delay::new(cp.SYST);
    let pins = hal::uarte::Pins {
        rxd: port0.p0_08.into_floating_input().degrade(),
        txd: port0.p0_06.into_push_pull_output(Level::Low).degrade(),
        cts: None,
        rts: None
    };
    let mut uart = hal::uarte::Uarte::new(p.UARTE0, pins, hal::uarte::Parity::EXCLUDED, hal::uarte::Baudrate::BAUD1M);
    let i2c_pins = hal::twim::Pins {
        sda: port0.p0_15.into_floating_input().degrade(),
        scl: port0.p0_13.into_floating_input().degrade()
    };
    let mut i2c = hal::twim::Twim::new(p.TWIM0, i2c_pins, hal::twim::Frequency::K400);

    let mut sht3 = sht3::SHT3::new(&mut i2c, &mut delay);

    sht3.init().unwrap();

    // let com_meas : [u8; 2] = [0x78, 0x66];
    // let com_wakeup : [u8; 2] = [0x35, 0x17];
    // let com_id : [u8; 2] = [0xEF, 0xC8];
    // let com_sleep : [u8; 2] = [0xB0, 0x98];

    loop {
        // let mut array: [u8; 6] = [0; 6];
        // // wake up
        // i2c.write(0x70, &com_wakeup).unwrap();
        // delay.delay_ms(1u32);
        // // start measurement
        // i2c.write(0x70, &com_meas).unwrap();
        // // wait 15 ms => max measurement time is 12.1 ms
        // delay.delay_ms(15u32);
        // // read measurement
        // i2c.read(0x70, &mut array).unwrap();
        // // sleep
        // i2c.write(0x70, &com_sleep).unwrap();

        // let hum_array = [array[3], array[4]];
        // let hum = u16::from_be_bytes(hum_array) as f32 / 655.36;
        // let temp_array = [array[0], array[1]];
        // let temp = -45.0 + 0.00267028808594 * u16::from_be_bytes(temp_array) as f32;
        
        // led_red.set_high().unwrap();
        // delay.delay_ms(500u32);
        // led_red.set_low().unwrap();
        // led_green.set_high().unwrap();
        // delay.delay_ms(500u32);
        // led_red.set_high().unwrap();
        // delay.delay_ms(500u32);
        // led_green.set_low().unwrap();
        // led_red.set_low().unwrap();
        // delay.delay_ms(500u32);
        
        // if sensor.accel_status().unwrap().xyz_new_data {
            //     let data = sensor.accel_data().unwrap();
        //     uart.write_fmt(format_args!("Acceleration: x {} y {} z {}\n", data.x, data.y, data.z)).unwrap();
        // }
        
        // let (temp, hum) = sht3.get_measurement().unwrap();

        led_red.set_high().unwrap();
        delay.delay_ms(10u32);
        led_green.set_high().unwrap();
        // uart.write_fmt(format_args!("temp: {}\t hum: {}\n", temp, hum)).unwrap();
        led_red.set_low().unwrap();
        delay.delay_ms(10u32);
        led_green.set_low().unwrap();

        // uart.write_str(&"test\n").unwrap();
        delay.delay_ms(1000u32);
    }
}

fn send(radio: &mut nrf52810_hal::pac::RADIO) {
    // POWER
    // 1 (default)

    // PCNF0
    // LFLEN: length field length in bits => 8
    radio.pcnf0.write(|w| unsafe { w.lflen().bits(8) });
    // S0LEN: S0 length in bytes => 0 (default)
    // S1LEN: S1 length in bits => 0 (default)
    // S1INCL: 0 (default)
    // PLEN: 0 (default)

    // PCNF1
    // MAXLEN: max length of payload packet => 255
    radio.pcnf1.write(|w| unsafe { w.maxlen().bits(255) });
    // STATLEN: 0 (default)
    // BALEN: base address length => 2
    radio.pcnf1.write(|w| unsafe { w.balen().bits(2) });
    // ENDIAN: 0 (default)
    // WHITEEN: enable packet whitening => 1
    radio.pcnf1.write(|w| unsafe { w.balen().bits(1) });

    // TXADDRESS
    // TXADDRESS: 0 (default)

    // CRCCNF
    // LEN: length => 3
    radio.crccnf.write(|w| w.len().bits(3));
    // SKIPADDR: 0 (default)

    // CRCPOLY
    // x24 + x10 + x9 + x6 + x4 + x3 + x + 1
    // CRCPOLY: 00000000_00000110_01011011
    radio.crcpoly.write(|w| unsafe { w.bits(0b00000000_00000110_01011011) });
}
