################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Src/bsp/startup/startup_stm32f746nghx.s 

OBJS += \
./Src/bsp/startup/startup_stm32f746nghx.o 

S_DEPS += \
./Src/bsp/startup/startup_stm32f746nghx.d 


# Each subdirectory must supply rules for building sources it contributes
Src/bsp/startup/%.o: ../Src/bsp/startup/%.s Src/bsp/startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Src-2f-bsp-2f-startup

clean-Src-2f-bsp-2f-startup:
	-$(RM) ./Src/bsp/startup/startup_stm32f746nghx.d ./Src/bsp/startup/startup_stm32f746nghx.o

.PHONY: clean-Src-2f-bsp-2f-startup

