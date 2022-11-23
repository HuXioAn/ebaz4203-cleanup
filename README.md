# Vivado project: clean EBAZ4203(zynq7010)

To overwrite the cryptocurrency mining program in the board's nand flash and check the basic functionality, you can program the binnaries to flash.

PL part : blink the red and green leds attched to W13 W14 alternately.
PS part : print helloworld from uart1 on 24/25 pins in 5 seconds after boot.  

Notice that the PL led blink clk is based on an **active** 50MHz crystal oscillator which needs you solder it manually together with several other hardware changes.There are solutions to PL clock source other than this, the source could be the **25MHz one** beside the ethernet chip or **PS core** which needs configuration.

PS Uart printing maybe still work if there's no working oscillator for PL.  
----

`ARM_FPGA_bin` folder contains PL blink and PS uart print binaries, while `FPGA_bin` only contains PL blink binaries.


