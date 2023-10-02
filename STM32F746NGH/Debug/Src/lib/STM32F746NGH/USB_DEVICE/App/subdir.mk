################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/lib/STM32F746NGH/USB_DEVICE/App/usb_device.c \
../Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_cdc_if.c \
../Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_desc.c 

OBJS += \
./Src/lib/STM32F746NGH/USB_DEVICE/App/usb_device.o \
./Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_cdc_if.o \
./Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_desc.o 

C_DEPS += \
./Src/lib/STM32F746NGH/USB_DEVICE/App/usb_device.d \
./Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_cdc_if.d \
./Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_desc.d 


# Each subdirectory must supply rules for building sources it contributes
Src/lib/STM32F746NGH/USB_DEVICE/App/%.o Src/lib/STM32F746NGH/USB_DEVICE/App/%.su Src/lib/STM32F746NGH/USB_DEVICE/App/%.cyclo: ../Src/lib/STM32F746NGH/USB_DEVICE/App/%.c Src/lib/STM32F746NGH/USB_DEVICE/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -c -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/ap" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/bsp" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common/core" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/common/hw/include" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/hw" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/hw/driver" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/CMSIS/Include" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/STM32F7xx_HAL_Driver/Inc" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/USB_DEVICE/App" -I"D:/1_Work/01_Work/02_ExtWork/STM32F746NGH/STM32F746NGH/Src/lib/STM32F746NGH/USB_DEVICE/Target" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src-2f-lib-2f-STM32F746NGH-2f-USB_DEVICE-2f-App

clean-Src-2f-lib-2f-STM32F746NGH-2f-USB_DEVICE-2f-App:
	-$(RM) ./Src/lib/STM32F746NGH/USB_DEVICE/App/usb_device.cyclo ./Src/lib/STM32F746NGH/USB_DEVICE/App/usb_device.d ./Src/lib/STM32F746NGH/USB_DEVICE/App/usb_device.o ./Src/lib/STM32F746NGH/USB_DEVICE/App/usb_device.su ./Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_cdc_if.cyclo ./Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_cdc_if.d ./Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_cdc_if.o ./Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_cdc_if.su ./Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_desc.cyclo ./Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_desc.d ./Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_desc.o ./Src/lib/STM32F746NGH/USB_DEVICE/App/usbd_desc.su

.PHONY: clean-Src-2f-lib-2f-STM32F746NGH-2f-USB_DEVICE-2f-App

