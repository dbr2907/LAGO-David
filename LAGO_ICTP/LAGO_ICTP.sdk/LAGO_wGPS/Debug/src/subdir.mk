################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/AD7303.c \
../src/DMA.c \
../src/DS3231M.c \
../src/GPS_TimeStamp.c \
../src/Histogram.c \
../src/IIC_RW.c \
../src/MAX5216PM.c \
../src/TempPress.c \
../src/echo.c \
../src/iic_phyreset.c \
../src/main.c 

OBJS += \
./src/AD7303.o \
./src/DMA.o \
./src/DS3231M.o \
./src/GPS_TimeStamp.o \
./src/Histogram.o \
./src/IIC_RW.o \
./src/MAX5216PM.o \
./src/TempPress.o \
./src/echo.o \
./src/iic_phyreset.o \
./src/main.o 

C_DEPS += \
./src/AD7303.d \
./src/DMA.d \
./src/DS3231M.d \
./src/GPS_TimeStamp.d \
./src/Histogram.d \
./src/IIC_RW.d \
./src/MAX5216PM.d \
./src/TempPress.d \
./src/echo.d \
./src/iic_phyreset.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../LAGO_wGPS_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


