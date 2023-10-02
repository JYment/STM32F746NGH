################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/hw/hw.c 

OBJS += \
./Src/hw/hw.o 

C_DEPS += \
./Src/hw/hw.d 


# Each subdirectory must supply rules for building sources it contributes
Src/hw/%.o Src/hw/%.su Src/hw/%.cyclo: ../Src/hw/%.c Src/hw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -c -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/ap" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/bsp" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common/core" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common/hw/include" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/hw" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/hw/driver" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/CMSIS/Include" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/STM32F7xx_HAL_Driver/Inc" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/USB_DEVICE/App" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/USB_DEVICE/Target" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src-2f-hw

clean-Src-2f-hw:
	-$(RM) ./Src/hw/hw.cyclo ./Src/hw/hw.d ./Src/hw/hw.o ./Src/hw/hw.su

.PHONY: clean-Src-2f-hw

