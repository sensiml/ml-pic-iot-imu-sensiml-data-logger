#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ml-pic-iot-imu-sensiml-data-logger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ml-pic-iot-imu-sensiml-data-logger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=app_config/bmi160/bmi160_sensor.c bmi160/bmi160.c ../knowledgepack/knowledgepack_project/sml_output.c ../knowledgepack/knowledgepack_project/sml_recognition_run.c mcc_generated_files/i2c1.c mcc_generated_files/uart1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/pin_manager.c mcc_generated_files/tmr1.c sensiml/ssi_comms.c main.c buffer.c ringbuffer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o ${OBJECTDIR}/bmi160/bmi160.o ${OBJECTDIR}/_ext/1798900010/sml_output.o ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/sensiml/ssi_comms.o ${OBJECTDIR}/main.o ${OBJECTDIR}/buffer.o ${OBJECTDIR}/ringbuffer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d ${OBJECTDIR}/bmi160/bmi160.o.d ${OBJECTDIR}/_ext/1798900010/sml_output.o.d ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/sensiml/ssi_comms.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/buffer.o.d ${OBJECTDIR}/ringbuffer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o ${OBJECTDIR}/bmi160/bmi160.o ${OBJECTDIR}/_ext/1798900010/sml_output.o ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/sensiml/ssi_comms.o ${OBJECTDIR}/main.o ${OBJECTDIR}/buffer.o ${OBJECTDIR}/ringbuffer.o

# Source Files
SOURCEFILES=app_config/bmi160/bmi160_sensor.c bmi160/bmi160.c ../knowledgepack/knowledgepack_project/sml_output.c ../knowledgepack/knowledgepack_project/sml_recognition_run.c mcc_generated_files/i2c1.c mcc_generated_files/uart1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/pin_manager.c mcc_generated_files/tmr1.c sensiml/ssi_comms.c main.c buffer.c ringbuffer.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/ml-pic-iot-imu-sensiml-data-logger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA705
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA705.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o: app_config/bmi160/bmi160_sensor.c  .generated_files/flags/default/4852f0ada99f1902a272291aa80e4933e31cf99 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/app_config/bmi160" 
	@${RM} ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_config/bmi160/bmi160_sensor.c  -o ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/bmi160/bmi160.o: bmi160/bmi160.c  .generated_files/flags/default/47c6a57070aab152fabc3708779ae91bc86ab50f .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/bmi160" 
	@${RM} ${OBJECTDIR}/bmi160/bmi160.o.d 
	@${RM} ${OBJECTDIR}/bmi160/bmi160.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bmi160/bmi160.c  -o ${OBJECTDIR}/bmi160/bmi160.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bmi160/bmi160.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1798900010/sml_output.o: ../knowledgepack/knowledgepack_project/sml_output.c  .generated_files/flags/default/143fcf39ad6a51ab7c14ac8733516f25a1402089 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/_ext/1798900010" 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_output.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../knowledgepack/knowledgepack_project/sml_output.c  -o ${OBJECTDIR}/_ext/1798900010/sml_output.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1798900010/sml_output.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o: ../knowledgepack/knowledgepack_project/sml_recognition_run.c  .generated_files/flags/default/37a9bfac171170cc914009c59c5a9cd5d9c4fd83 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/_ext/1798900010" 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../knowledgepack/knowledgepack_project/sml_recognition_run.c  -o ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/5e3876e426953312fe44d32a99892e4e5b725a35 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/c18c700ccaf81dd167bb3572683bdea63a7e16ab .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/1ef8dbd9a99efd06f095fd82890506ab1892b2f0 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/9abdda02a7b7f8b2a5029b862259a259283b9656 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/8d0963733df901863b25698383b359c2a53a5cfb .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/60a3a616b395f45cf2544a2d29577433104b78a5 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/af34663abb9ec9673deb198095f84c9c0003350a .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/63f2a28e116dac98a93fed52f380a29fcfe625fa .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/716446a4dde74b1f91a9a8eebef942da6a59a2d9 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sensiml/ssi_comms.o: sensiml/ssi_comms.c  .generated_files/flags/default/34afc29c65bb2850c08ea30dd42f0238913c6c39 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/sensiml" 
	@${RM} ${OBJECTDIR}/sensiml/ssi_comms.o.d 
	@${RM} ${OBJECTDIR}/sensiml/ssi_comms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sensiml/ssi_comms.c  -o ${OBJECTDIR}/sensiml/ssi_comms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sensiml/ssi_comms.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/1215115a66fd0297cf1f3880d3d03d225204b2a8 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/buffer.o: buffer.c  .generated_files/flags/default/7267fb0317202f2481c9d344f8066dd24936043d .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/buffer.o.d 
	@${RM} ${OBJECTDIR}/buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  buffer.c  -o ${OBJECTDIR}/buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/buffer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/ringbuffer.o: ringbuffer.c  .generated_files/flags/default/c0192bdb62210e52ac28878e21e2ab9124b69190 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/ringbuffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ringbuffer.c  -o ${OBJECTDIR}/ringbuffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ringbuffer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o: app_config/bmi160/bmi160_sensor.c  .generated_files/flags/default/1d5088aea35d74c81df4b75be27897b221403a78 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/app_config/bmi160" 
	@${RM} ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_config/bmi160/bmi160_sensor.c  -o ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/bmi160/bmi160.o: bmi160/bmi160.c  .generated_files/flags/default/2a9550997baf99abc3e7bb2cd27eb81b81000d44 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/bmi160" 
	@${RM} ${OBJECTDIR}/bmi160/bmi160.o.d 
	@${RM} ${OBJECTDIR}/bmi160/bmi160.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bmi160/bmi160.c  -o ${OBJECTDIR}/bmi160/bmi160.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bmi160/bmi160.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1798900010/sml_output.o: ../knowledgepack/knowledgepack_project/sml_output.c  .generated_files/flags/default/9a34bfefe1401e1b6e5a0fd809b3331667b17a90 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/_ext/1798900010" 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_output.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../knowledgepack/knowledgepack_project/sml_output.c  -o ${OBJECTDIR}/_ext/1798900010/sml_output.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1798900010/sml_output.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o: ../knowledgepack/knowledgepack_project/sml_recognition_run.c  .generated_files/flags/default/2ddb06af5d2c3d82c7a55b9b98256f155c4ada8e .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/_ext/1798900010" 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../knowledgepack/knowledgepack_project/sml_recognition_run.c  -o ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/cd86dd207f8572136ef822ee260866aec3ecb11 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/17b97ebc670cb58ccaf1176a9c743d28f1b13d29 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/d67e60a73ff3ade7b3a8de2aff2e685ce5e9954b .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/6f5a2307a675232ea32f53cfe0b0f07d02fcad6f .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/6f1d6cb3627fc30d370074f107493c9a8c1793ba .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/210a86878d5a23dd8224c90b2d8be3282fd3da00 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/ab47d2334ceef6b382d72a5e63b593136e0c77b8 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/5f6d30289bfb6a19de3c2a458b3a70665d86f861 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/931560c169aef354941420eb684f658817f3ef75 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sensiml/ssi_comms.o: sensiml/ssi_comms.c  .generated_files/flags/default/93aa8268913fd665cfa8783fca4c60bf04549111 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/sensiml" 
	@${RM} ${OBJECTDIR}/sensiml/ssi_comms.o.d 
	@${RM} ${OBJECTDIR}/sensiml/ssi_comms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sensiml/ssi_comms.c  -o ${OBJECTDIR}/sensiml/ssi_comms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sensiml/ssi_comms.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/4685fbb23caa54c7be767797e65d5b8828b5ae4f .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/buffer.o: buffer.c  .generated_files/flags/default/3e809524785371cac14cae33138543765e10a90d .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/buffer.o.d 
	@${RM} ${OBJECTDIR}/buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  buffer.c  -o ${OBJECTDIR}/buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/buffer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/ringbuffer.o: ringbuffer.c  .generated_files/flags/default/cc3df523a8681f339ac3fb7f35d80d25303425e0 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/ringbuffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ringbuffer.c  -o ${OBJECTDIR}/ringbuffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ringbuffer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/ml-pic-iot-imu-sensiml-data-logger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../knowledgepack/sensiml/lib/libsensiml.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/ml-pic-iot-imu-sensiml-data-logger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    ..\knowledgepack\sensiml\lib\libsensiml.a  -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project"  -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/ml-pic-iot-imu-sensiml-data-logger.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../knowledgepack/sensiml/lib/libsensiml.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/ml-pic-iot-imu-sensiml-data-logger.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    ..\knowledgepack\sensiml\lib\libsensiml.a  -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/ml-pic-iot-imu-sensiml-data-logger.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
