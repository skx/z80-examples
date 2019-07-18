# Z80 Examples

This repository contains example code for the Z80 processor, written in assembly language.  This is where I'll post things as I experiment.

The code should be standalone, but I assume that there is the ability to output a single byte to the serial-console, or STDOUT via:

    ld a, '3'
    out (1), a

Similarly I assume reading a single character from a serial-console, or STDIN, is possible via:

    in a, (1)

This is true of the [Z80 emulator](https://github.com/skx/z80emulater/) I'm using, as well as the [physical machine I intend to build](https://blog.steve.fi/tags/z80/).


## 01.  RAM Increment

The simplest example is the first, which increments a single byte of RAM endlessly.  If you have an emulator that lets you dump RAM after every instruction, or physical hardware upon which you can do the same this should prove your code is working:

* [ram-increment.z80](ram-increment.z80)


## 02. String Output

Outputing a string, held inline.  Simple test of loops:

* [string-output.z80](string-output.z80)

## 03. Number Output

This example is similar to the previous one, but instead outputs the contents of the HL register-pair, as a four-digit hexadecimal number.

i.e. If you assume this `ld hl, 0x123F`, then you should see the output "0x123F" generated, which proves a number a has been converted to an ASCII-string, and output correctly.

* [number-output.z80](number-output.z80)


Steve
--
