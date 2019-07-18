
#
# Compile all files by default
#
default: $(patsubst %.z80,%.bin,$(wildcard *.z80))
	touch all

#
# Cleanup
#
clean:
	rm -f *.bin all

#
# Rule for compiling a single file
#
%.bin: %.z80
	z80asm -o $@ $<
