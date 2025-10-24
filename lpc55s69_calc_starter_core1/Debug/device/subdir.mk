################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../device/system_LPC55S69_cm33_core1.c 

C_DEPS += \
./device/system_LPC55S69_cm33_core1.d 

OBJS += \
./device/system_LPC55S69_cm33_core1.o 


# Each subdirectory must supply rules for building sources it contributes
device/%.o: ../device/%.c device/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCPU_LPC55S69JBD100 -DLCD_CORE1 -DCPU_LPC55S69JBD100_cm33_nodsp -DCPU_LPC55S69JBD100_cm33_core1 -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__REDLIB__ -D__MULTICORE_M33SLAVE -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\lcd" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\board" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\source" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\utilities\debug_console" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\utilities\debug_console\config" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\drivers" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\component\uart" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\component\serial_manager" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\utilities\str" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\device" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\device\periph" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\CMSIS" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\CMSIS\m-profile" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\component\lists" -I"C:\Users\Ilias\Documents\MCUXpressoIDE_25.6.136\workspace\lpc55s69_calc_starter_core1\utilities" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-device

clean-device:
	-$(RM) ./device/system_LPC55S69_cm33_core1.d ./device/system_LPC55S69_cm33_core1.o

.PHONY: clean-device

