################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
Average.obj: ../Average.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="Average.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Characteristics.obj: ../Characteristics.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="Characteristics.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Example_2806xAdcSoc.obj: ../Example_2806xAdcSoc.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="Example_2806xAdcSoc.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_Adc.obj: C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/source/F2806x_Adc.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="F2806x_Adc.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_CodeStartBranch.obj: C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/source/F2806x_CodeStartBranch.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="F2806x_CodeStartBranch.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_DefaultIsr.obj: C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/source/F2806x_DefaultIsr.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="F2806x_DefaultIsr.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_GlobalVariableDefs.obj: C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/source/F2806x_GlobalVariableDefs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="F2806x_GlobalVariableDefs.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_PieCtrl.obj: C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/source/F2806x_PieCtrl.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="F2806x_PieCtrl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_PieVect.obj: C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/source/F2806x_PieVect.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="F2806x_PieVect.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_SysCtrl.obj: C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/source/F2806x_SysCtrl.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="F2806x_SysCtrl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_usDelay.obj: C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/source/F2806x_usDelay.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="F2806x_usDelay.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sensor.obj: ../Sensor.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="Sensor.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Threshold.obj: ../Threshold.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --vcu_support=vcu0 --float_support=fpu32 --include_path="C:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2806x/v151/F2806x_common/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --include_path="C:/ti/controlSUITE/libs/math/FPUfastRTS/V100/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_suppress=10063 --diag_warning=225 --verbose_diagnostics --issue_remarks --cdebug_asm_data --output_all_syms --preproc_with_compile --preproc_dependency="Threshold.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


