################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
D:/DSP/SEED-HPS6455/Test_HPS6455/srio_test/dsp_fpga_srio/srio_dsp/Debug/main.obj: D:/DSP/SEED-HPS6455/Test_HPS6455/srio_test/dsp_fpga_srio/srio_dsp/main.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6400 -g --define="_DEBUG" --include_path="C:/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="C:/ti/xdais_7_21_01_07/packages/ti/xdais" --include_path="/include" --display_error_number --diag_warning=225 --abi=coffabi --obj_directory="D:/DSP/SEED-HPS6455/Test_HPS6455/srio_test/dsp_fpga_srio/srio_dsp/srio_a/../Debug" --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

D:/DSP/SEED-HPS6455/Test_HPS6455/srio_test/dsp_fpga_srio/srio_dsp/Debug/vectors.obj: D:/DSP/SEED-HPS6455/Test_HPS6455/srio_test/dsp_fpga_srio/srio_dsp/vectors.asm $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6400 -g --define="_DEBUG" --include_path="C:/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="C:/ti/xdais_7_21_01_07/packages/ti/xdais" --include_path="/include" --display_error_number --diag_warning=225 --abi=coffabi --obj_directory="D:/DSP/SEED-HPS6455/Test_HPS6455/srio_test/dsp_fpga_srio/srio_dsp/srio_a/../Debug" --preproc_with_compile --preproc_dependency="vectors.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


