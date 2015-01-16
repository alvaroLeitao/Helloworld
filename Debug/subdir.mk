################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../helloworld.cu 

CU_DEPS += \
./helloworld.d 

OBJS += \
./helloworld.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/ufs/leitao/cuda/cuda-6.5/bin/nvcc -G -g -O0 -gencode arch=compute_20,code=sm_20 --target-cpu-architecture x86 -m64 -odir "" -M -o "$(@:%.o=%.d)" "$<"
	/ufs/leitao/cuda/cuda-6.5/bin/nvcc -G -g -O0 --compile --relocatable-device-code=false -gencode arch=compute_20,code=compute_20 -gencode arch=compute_20,code=sm_20 --target-cpu-architecture x86 -m64  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


