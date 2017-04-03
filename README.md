# README #

This project was part of a series to learn how to code in Hardware Description Languages such as VHDL and Verilog. It involves the creation of simple logic components and circuitry.

Here I demonstrate the implementation of a timer. This particular timer as implemented in hardware has three components, namely a comparator, a counter and a prescalar.

Timers are one of the most important sub-functions of a microcontroller. Through the use of counter, comparators and prescalars - hardware is able to precisely time processes, generate signals and count events. A counter converts the number of input cycles to a binary value using an array of triggers. The maximum number of counted cycles depends on the length of this array, and this is marked by the length of the binary code. Here we demonstrate an 8-bit counter. If a timer has reached its maximum value (255 in 8-bit), the next cycle will generate an overflow and the counter resets back to 0. A counter's clock signal can come from the clock signal of the hardware, and in this case it is possible to decrease its value using a prescaler.
