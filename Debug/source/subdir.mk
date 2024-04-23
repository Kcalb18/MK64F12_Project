################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/MK64F12_Project.c \
../source/semihost_hardfault.c 

C_DEPS += \
./source/MK64F12_Project.d \
./source/semihost_hardfault.d 

OBJS += \
./source/MK64F12_Project.o \
./source/semihost_hardfault.o 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\SDK\MK64F12_Project\board" -I"C:\SDK\MK64F12_Project\source" -I"C:\SDK\MK64F12_Project\utilities" -I"C:\SDK\MK64F12_Project\drivers" -I"C:\SDK\MK64F12_Project\device" -I"C:\SDK\MK64F12_Project\component\serial_manager" -I"C:\SDK\MK64F12_Project\component\lists" -I"C:\SDK\MK64F12_Project\CMSIS" -I"C:\SDK\MK64F12_Project\component\uart" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source

clean-source:
	-$(RM) ./source/MK64F12_Project.d ./source/MK64F12_Project.o ./source/semihost_hardfault.d ./source/semihost_hardfault.o

.PHONY: clean-source
