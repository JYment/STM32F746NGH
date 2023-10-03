################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.c 

OBJS += \
./Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.o 

C_DEPS += \
./Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.d 


# Each subdirectory must supply rules for building sources it contributes
Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/%.o Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/%.su Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/%.cyclo: ../Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/%.c Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -c -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/ap" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/bsp" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common/core" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common/hw/include" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common/hw" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/hw" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/hw/driver" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/CMSIS/Include" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/STM32F7xx_HAL_Driver/Inc" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/USB_DEVICE/App" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/USB_DEVICE/Target" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src-2f-lib-2f-STM32F746NGH-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-CDC-2f-Src

clean-Src-2f-lib-2f-STM32F746NGH-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-CDC-2f-Src:
	-$(RM) ./Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.cyclo ./Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.d ./Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.o ./Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.su

.PHONY: clean-Src-2f-lib-2f-STM32F746NGH-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-CDC-2f-Src

