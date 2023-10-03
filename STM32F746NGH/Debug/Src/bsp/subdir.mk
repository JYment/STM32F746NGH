################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/bsp/bsp.c \
../Src/bsp/stm32f7xx_hal_msp.c \
../Src/bsp/stm32f7xx_it.c \
../Src/bsp/syscalls.c \
../Src/bsp/sysmem.c \
../Src/bsp/system_stm32f7xx.c 

OBJS += \
./Src/bsp/bsp.o \
./Src/bsp/stm32f7xx_hal_msp.o \
./Src/bsp/stm32f7xx_it.o \
./Src/bsp/syscalls.o \
./Src/bsp/sysmem.o \
./Src/bsp/system_stm32f7xx.o 

C_DEPS += \
./Src/bsp/bsp.d \
./Src/bsp/stm32f7xx_hal_msp.d \
./Src/bsp/stm32f7xx_it.d \
./Src/bsp/syscalls.d \
./Src/bsp/sysmem.d \
./Src/bsp/system_stm32f7xx.d 


# Each subdirectory must supply rules for building sources it contributes
Src/bsp/%.o Src/bsp/%.su Src/bsp/%.cyclo: ../Src/bsp/%.c Src/bsp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -c -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/ap" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/bsp" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common/core" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common/hw/include" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common/hw" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/hw" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/hw/driver" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/CMSIS/Include" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/STM32F7xx_HAL_Driver/Inc" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/USB_DEVICE/App" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/USB_DEVICE/Target" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src-2f-bsp

clean-Src-2f-bsp:
	-$(RM) ./Src/bsp/bsp.cyclo ./Src/bsp/bsp.d ./Src/bsp/bsp.o ./Src/bsp/bsp.su ./Src/bsp/stm32f7xx_hal_msp.cyclo ./Src/bsp/stm32f7xx_hal_msp.d ./Src/bsp/stm32f7xx_hal_msp.o ./Src/bsp/stm32f7xx_hal_msp.su ./Src/bsp/stm32f7xx_it.cyclo ./Src/bsp/stm32f7xx_it.d ./Src/bsp/stm32f7xx_it.o ./Src/bsp/stm32f7xx_it.su ./Src/bsp/syscalls.cyclo ./Src/bsp/syscalls.d ./Src/bsp/syscalls.o ./Src/bsp/syscalls.su ./Src/bsp/sysmem.cyclo ./Src/bsp/sysmem.d ./Src/bsp/sysmem.o ./Src/bsp/sysmem.su ./Src/bsp/system_stm32f7xx.cyclo ./Src/bsp/system_stm32f7xx.d ./Src/bsp/system_stm32f7xx.o ./Src/bsp/system_stm32f7xx.su

.PHONY: clean-Src-2f-bsp

