# LPC55S69 Vector Calculator - Embedded Scientific Computing Platform

A port of a PC-based vector calculator to the NXP LPC55S69 dual-core Cortex-M33 microcontroller, creating a standalone scientific computing device. This project implements a full-featured mathematical environment with vector/matrix operations, complex number support, file system management, graphical plotting, and hardware acceleration using the PowerQuad DSP coprocessor.

## Key Features
- **Dual-Core Architecture**: Core 0 handles mathematical computations with FPU and PowerQuad DSP, while Core 1 manages LCD display operations
- **Mathematical Engine**: Supports real/complex numbers, scalars, matrices, and user-defined functions
- **File System**: FAT32 support via microSD card for saving calculations, scripts, and data
- **Graphical Interface**: 240x320 LCD display with plotting capabilities (curves, grids, labels)
- **Hardware Acceleration**: PowerQuad DSP for accelerated FFT, trigonometric functions, and filtering
- **Sensor Integration**: MMA8652 accelerometer for orientation detection
- **VT100 Terminal**: Full terminal emulation with command history, editing, and color support


## Hardware Requirements
- NXP LPC55S69 development board
- microSD card (FAT32 formatted)
- 240x320 LCD display with SPI interface
- USB serial cable for terminal interface

## Getting Started
1. Import project into MCUXpresso IDE
2. Configure clocks and pins using IDE tools
3. Build and flash to LPC55S69
4. Connect via serial terminal (115200 baud)
5. Use SD card for file operations and help system

## Example Usage
```bash
# Basic calculations
a=2
b=2*a+1
c=1:5            # Vector creation
z=4+3i           # Complex numbers

# Function definition
function f(x)
    return 2*x+1
endfunction

# Graphical plotting
x=-1:0.1:3
f="(x-1)^2-2"
plot(x,f(x),"Fc6")

