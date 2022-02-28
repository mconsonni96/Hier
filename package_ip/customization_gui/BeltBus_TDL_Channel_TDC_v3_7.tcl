
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/BeltBus_TDL_Channel_TDC_v3_5.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  set XUS_VS_X7S [ipgui::add_param $IPINST -name "XUS_VS_X7S" -widget comboBox]
  set_property tooltip {Use TDL for Xilinx UltraScale or Xilinx 7-Series} ${XUS_VS_X7S}
  set NUM_TAP_TDL [ipgui::add_param $IPINST -name "NUM_TAP_TDL"]
  set_property tooltip {Number of Taps in each TDL} ${NUM_TAP_TDL}
  set NUMBER_OF_TDL [ipgui::add_param $IPINST -name "NUMBER_OF_TDL"]
  set_property tooltip {Number of TDL sub-Interpolated in each TDC channel} ${NUMBER_OF_TDL}
  set BIT_SMP_TDL [ipgui::add_param $IPINST -name "BIT_SMP_TDL"]
  set_property tooltip {Number of taps sampled on the TDL} ${BIT_SMP_TDL}
  set BUFFERING_STAGE [ipgui::add_param $IPINST -name "BUFFERING_STAGE"]
  set_property tooltip {Insertion of a further buffering stage between TDL and decoder for bufferazing the generation of the valid} ${BUFFERING_STAGE}
  set DEBUG_MODE [ipgui::add_param $IPINST -name "DEBUG_MODE"]
  set_property tooltip {Allow to tune in real-time the valid position for its generation} ${DEBUG_MODE}
  set SIM_VS_IMP [ipgui::add_param $IPINST -name "SIM_VS_IMP" -widget comboBox]
  set_property tooltip {Use TDL for simulation or primitive for implementation} ${SIM_VS_IMP}
  set FILE_PATH_NAME_CO_DELAY [ipgui::add_param $IPINST -name "FILE_PATH_NAME_CO_DELAY"]
  set_property tooltip {CO Delay Path Used for simulated TDL} ${FILE_PATH_NAME_CO_DELAY}
  set FILE_PATH_NAME_O_DELAY [ipgui::add_param $IPINST -name "FILE_PATH_NAME_O_DELAY"]
  set_property tooltip {O Delay Path Used for simulated TDL} ${FILE_PATH_NAME_O_DELAY}
  set MAX_VALID_TAP_POS [ipgui::add_param $IPINST -name "MAX_VALID_TAP_POS"]
  set_property tooltip {Select the maximum position of the bit of sampled taps of TDL to insert in the MUX using in DEBUG for valid generation} ${MAX_VALID_TAP_POS}
  set MIN_VALID_TAP_POS [ipgui::add_param $IPINST -name "MIN_VALID_TAP_POS"]
  set_property tooltip {Select the minimum position of the bit of sampled taps of TDL to insert in the MUX using in DEBUG for valid generation} ${MIN_VALID_TAP_POS}
  set OFFSET_TAP_TDL_0 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_0"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 0} ${OFFSET_TAP_TDL_0}
  set OFFSET_TAP_TDL_1 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_1"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 1} ${OFFSET_TAP_TDL_1}
  set OFFSET_TAP_TDL_2 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_2"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 2} ${OFFSET_TAP_TDL_2}
  set OFFSET_TAP_TDL_3 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_3"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 3} ${OFFSET_TAP_TDL_3}
  set OFFSET_TAP_TDL_4 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_4"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 4} ${OFFSET_TAP_TDL_4}
  set OFFSET_TAP_TDL_5 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_5"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 5} ${OFFSET_TAP_TDL_5}
  set OFFSET_TAP_TDL_6 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_6"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 6} ${OFFSET_TAP_TDL_6}
  set OFFSET_TAP_TDL_7 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_7"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 7} ${OFFSET_TAP_TDL_7}
  set OFFSET_TAP_TDL_8 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_8"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 8} ${OFFSET_TAP_TDL_8}
  set OFFSET_TAP_TDL_9 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_9"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 9} ${OFFSET_TAP_TDL_9}
  set OFFSET_TAP_TDL_10 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_10"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 10} ${OFFSET_TAP_TDL_10}
  set OFFSET_TAP_TDL_11 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_11"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 11} ${OFFSET_TAP_TDL_11}
  set OFFSET_TAP_TDL_12 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_12"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 12} ${OFFSET_TAP_TDL_12}
  set OFFSET_TAP_TDL_13 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_13"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 13} ${OFFSET_TAP_TDL_13}
  set OFFSET_TAP_TDL_14 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_14"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 14} ${OFFSET_TAP_TDL_14}
  set OFFSET_TAP_TDL_15 [ipgui::add_param $IPINST -name "OFFSET_TAP_TDL_15"]
  set_property tooltip {Offset Between consecutive Sampled Taps over the TDL 15} ${OFFSET_TAP_TDL_15}
  set STEP_VALID_TAP_POS [ipgui::add_param $IPINST -name "STEP_VALID_TAP_POS"]
  set_property tooltip {Select the step between consecuteve position of the bit of sampled taps of TDL to insert in the MUX using in DEBUGle for valid generation} ${STEP_VALID_TAP_POS}
  set TYPE_TDL_0 [ipgui::add_param $IPINST -name "TYPE_TDL_0" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 0} ${TYPE_TDL_0}
  set TYPE_TDL_1 [ipgui::add_param $IPINST -name "TYPE_TDL_1" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 1} ${TYPE_TDL_1}
  set TYPE_TDL_2 [ipgui::add_param $IPINST -name "TYPE_TDL_2" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 2} ${TYPE_TDL_2}
  set TYPE_TDL_3 [ipgui::add_param $IPINST -name "TYPE_TDL_3" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 3} ${TYPE_TDL_3}
  set TYPE_TDL_4 [ipgui::add_param $IPINST -name "TYPE_TDL_4" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 4} ${TYPE_TDL_4}
  set TYPE_TDL_5 [ipgui::add_param $IPINST -name "TYPE_TDL_5" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 5} ${TYPE_TDL_5}
  set TYPE_TDL_6 [ipgui::add_param $IPINST -name "TYPE_TDL_6" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 6} ${TYPE_TDL_6}
  set TYPE_TDL_7 [ipgui::add_param $IPINST -name "TYPE_TDL_7" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 7} ${TYPE_TDL_7}
  set TYPE_TDL_8 [ipgui::add_param $IPINST -name "TYPE_TDL_8" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 8} ${TYPE_TDL_8}
  set TYPE_TDL_9 [ipgui::add_param $IPINST -name "TYPE_TDL_9" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 9} ${TYPE_TDL_9}
  set TYPE_TDL_10 [ipgui::add_param $IPINST -name "TYPE_TDL_10" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 10} ${TYPE_TDL_10}
  set TYPE_TDL_11 [ipgui::add_param $IPINST -name "TYPE_TDL_11" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 11} ${TYPE_TDL_11}
  set TYPE_TDL_12 [ipgui::add_param $IPINST -name "TYPE_TDL_12" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 12} ${TYPE_TDL_12}
  set TYPE_TDL_13 [ipgui::add_param $IPINST -name "TYPE_TDL_13" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 13} ${TYPE_TDL_13}
  set TYPE_TDL_14 [ipgui::add_param $IPINST -name "TYPE_TDL_14" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 14} ${TYPE_TDL_14}
  set TYPE_TDL_15 [ipgui::add_param $IPINST -name "TYPE_TDL_15" -widget comboBox]
  set_property tooltip {CO vs O Sampling TDL 15} ${TYPE_TDL_15}
  set NUM_TAP_PRE_TDL [ipgui::add_param $IPINST -name "NUM_TAP_PRE_TDL"]
  set_property tooltip {Number of Taps in each TDL} ${NUM_TAP_PRE_TDL}
  set BIT_SMP_PRE_TDL [ipgui::add_param $IPINST -name "BIT_SMP_PRE_TDL"]
  set_property tooltip {Number of taps sampled on the PRE-TDL} ${BIT_SMP_PRE_TDL}
  set VALID_NUMBER_OF_TDL_INIT [ipgui::add_param $IPINST -name "VALID_NUMBER_OF_TDL_INIT"]
  set_property tooltip {Select the TDL for the valid position (if TDL Debug FALSE) or initalize the TDL to choose the valid position (if TDL Debug TRUE)} ${VALID_NUMBER_OF_TDL_INIT}
  set VALID_POSITION_TAP_INIT [ipgui::add_param $IPINST -name "VALID_POSITION_TAP_INIT"]
  set_property tooltip {Select the tap position for the valid (if TDL Debug FALSE) or initalize the position (if TDL Debug TRUE)} ${VALID_POSITION_TAP_INIT}
  set MD_VS_TD [ipgui::add_param $IPINST -name "MD_VS_TD" -widget comboBox]
  set_property tooltip {Choose the modality for setting the paramiters of the Decoder, automatic (Turbo) or manual (Macro)} ${MD_VS_TD}
  set BIT_BUBBLE [ipgui::add_param $IPINST -name "BIT_BUBBLE"]
  set_property tooltip {Maximum estention of a bubble error over the TDL} ${BIT_BUBBLE}
  set BIT_PIPE_COARSE [ipgui::add_param $IPINST -name "BIT_PIPE_COARSE"]
  set_property tooltip {Bit Pipeline used for Coarse Counter and/or Polarity} ${BIT_PIPE_COARSE}
  set BIT_SUB_INT [ipgui::add_param $IPINST -name "BIT_SUB_INT"]
  set_property tooltip {Bit dimenstino of Bit Sub-Interpolated Output} ${BIT_SUB_INT}
  set DEBUG_PORT_DECODER [ipgui::add_param $IPINST -name "DEBUG_PORT_DECODER"]
  set_property tooltip {Debug port at clock TDC for the Iper Decoder} ${DEBUG_PORT_DECODER}
  set DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0 [ipgui::add_param $IPINST -name "DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0"]
  set_property tooltip {Pipeline stage of the Tree Adder of Log2 Decoder used for solve bubble arrors} ${DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0}
  set DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1 [ipgui::add_param $IPINST -name "DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1"]
  set_property tooltip {Pipeline stage of the Tree Adder of Log2 Decoder used for solve bubble arrors} ${DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1}
  set DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0 [ipgui::add_param $IPINST -name "DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0"]
  set_property tooltip {Pipeline stage of the Thermo-to-Binary of T2B Decoder that intrinsecally solve the bubble errors} ${DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0}
  set DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1 [ipgui::add_param $IPINST -name "DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1"]
  set_property tooltip {Pipeline stage of the Thermo-to-Binary of T2B Decoder that intrinsecally solve the bubble errors} ${DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1}
  set DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2 [ipgui::add_param $IPINST -name "DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2"]
  set_property tooltip {Pipeline stage of the Thermo-to-Binary of T2B Decoder that intrinsecally solve the bubble errors} ${DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2}
  set DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3 [ipgui::add_param $IPINST -name "DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3"]
  set_property tooltip {Pipeline stage of the Thermo-to-Binary of T2B Decoder that intrinsecally solve the bubble errors} ${DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3}
  set EDGE_CHECK [ipgui::add_param $IPINST -name "EDGE_CHECK"]
  set_property tooltip {Choose if the sub-modules of Iper Decoder that do the edge chack removing the valid if no edge is over the TDLs} ${EDGE_CHECK}
  set FREE_RUNNING [ipgui::add_param $IPINST -name "FREE_RUNNING"]
  set_property tooltip {Choose if the sub-modules of Iper Decoder that do the decoding work each pulse of clock or only during the valid} ${FREE_RUNNING}
  set OPTIMIZATION_MODE [ipgui::add_param $IPINST -name "OPTIMIZATION_MODE" -widget comboBox]
  set_property tooltip {Choose the Turbo Decoder optimization mode setting to pre-processor } ${OPTIMIZATION_MODE}
  set PRINT_FULL_REPORT [ipgui::add_param $IPINST -name "PRINT_FULL_REPORT"]
  set_property tooltip {Print the report of the Turbo Decoder pre-processor} ${PRINT_FULL_REPORT}
  set SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0 [ipgui::add_param $IPINST -name "SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0"]
  set_property tooltip {Pipeline stage of the Tree Adder of used as Sub_interpolator of the TDLs} ${SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0}
  set SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1 [ipgui::add_param $IPINST -name "SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1"]
  set_property tooltip {Pipeline stage of the Tree Adder of used as Sub_interpolator of the TDLs} ${SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1}
  set TYPE_DECODER [ipgui::add_param $IPINST -name "TYPE_DECODER" -widget comboBox]
  set_property tooltip {Choose the type of the sub-module that do the decoding, thermo-to-binary (T2B) or log2 (LOG)} ${TYPE_DECODER}
  set TYPE_EDGE_0 [ipgui::add_param $IPINST -name "TYPE_EDGE_0" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_0}
  set TYPE_EDGE_1 [ipgui::add_param $IPINST -name "TYPE_EDGE_1" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_1}
  set TYPE_EDGE_2 [ipgui::add_param $IPINST -name "TYPE_EDGE_2" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_2}
  set TYPE_EDGE_3 [ipgui::add_param $IPINST -name "TYPE_EDGE_3" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_3}
  set TYPE_EDGE_4 [ipgui::add_param $IPINST -name "TYPE_EDGE_4" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_4}
  set TYPE_EDGE_5 [ipgui::add_param $IPINST -name "TYPE_EDGE_5" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_5}
  set TYPE_EDGE_6 [ipgui::add_param $IPINST -name "TYPE_EDGE_6" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_6}
  set TYPE_EDGE_7 [ipgui::add_param $IPINST -name "TYPE_EDGE_7" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_7}
  set TYPE_EDGE_8 [ipgui::add_param $IPINST -name "TYPE_EDGE_8" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_8}
  set TYPE_EDGE_9 [ipgui::add_param $IPINST -name "TYPE_EDGE_9" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_9}
  set TYPE_EDGE_10 [ipgui::add_param $IPINST -name "TYPE_EDGE_10" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_10}
  set TYPE_EDGE_11 [ipgui::add_param $IPINST -name "TYPE_EDGE_11" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_11}
  set TYPE_EDGE_12 [ipgui::add_param $IPINST -name "TYPE_EDGE_12" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_12}
  set TYPE_EDGE_13 [ipgui::add_param $IPINST -name "TYPE_EDGE_13" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_13}
  set TYPE_EDGE_14 [ipgui::add_param $IPINST -name "TYPE_EDGE_14" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_14}
  set TYPE_EDGE_15 [ipgui::add_param $IPINST -name "TYPE_EDGE_15" -widget comboBox]
  set_property tooltip {Edge to detect over TDL} ${TYPE_EDGE_15}
  set WEIGHT_AREA_VS_TIME_PERCENT [ipgui::add_param $IPINST -name "WEIGHT_AREA_VS_TIME_PERCENT"]
  set_property tooltip {Weigth Percent of the Cost to tune the settings of the pre-processor, Area is 0 Time is 100} ${WEIGHT_AREA_VS_TIME_PERCENT}
  set BIT_FID [ipgui::add_param $IPINST -name "BIT_FID"]
  set_property tooltip {Bit reserver to the FID of the Belt Bus used to identify properly the timestamps} ${BIT_FID}
  set BIT_COARSE [ipgui::add_param $IPINST -name "BIT_COARSE"]
  set_property tooltip {Bit Coarse Counter output dimension} ${BIT_COARSE}
  set BIT_UNCALIBRATED [ipgui::add_param $IPINST -name "BIT_UNCALIBRATED"]
  set_property tooltip {Bit Dimension of Uncalibrated_TDL} ${BIT_UNCALIBRATED}
  set CEC_VS_CTD_COUNTER [ipgui::add_param $IPINST -name "CEC_VS_CTD_COUNTER" -widget comboBox]
  set_property tooltip {Choice between the interal Coarse Counter inside the Coarse Extension Core (CEC) sub-module and the external Coarse Tree Distributor (CTD)} ${CEC_VS_CTD_COUNTER}
  set CEC_COARSE_CNT_INIT [ipgui::add_param $IPINST -name "CEC_COARSE_CNT_INIT"]
  set_property tooltip {Initialization value of the CEC Coarse Counter} ${CEC_COARSE_CNT_INIT}
  set FIFO_MEMORY_TYPE [ipgui::add_param $IPINST -name "FIFO_MEMORY_TYPE" -widget comboBox]
  set_property tooltip {Synchronizer FIFO type} ${FIFO_MEMORY_TYPE}
  ipgui::add_param $IPINST -name "FIFO_WRITE_DEPTH" -widget comboBox
  set MAX_INPUT_ENGINE_AND_PIPELINE_STAGE1 [ipgui::add_param $IPINST -name "MAX_INPUT_ENGINE_AND_PIPELINE_STAGE1"]
  set_property tooltip {Select the maximum number of inputs for the AND gates in the second stage} ${MAX_INPUT_ENGINE_AND_PIPELINE_STAGE1}
  set MAX_INPUT_ENGINE_AND_PIPELINE_STAGE2 [ipgui::add_param $IPINST -name "MAX_INPUT_ENGINE_AND_PIPELINE_STAGE2"]
  set_property tooltip {Select the maximum number of inputs for the AND gates in the third stage} ${MAX_INPUT_ENGINE_AND_PIPELINE_STAGE2}
  set MAX_INPUT_ENGINE_AND_PIPELINE_STAGE3 [ipgui::add_param $IPINST -name "MAX_INPUT_ENGINE_AND_PIPELINE_STAGE3"]
  set_property tooltip {Select the maximum number of inputs for the AND gates in the fourth stage} ${MAX_INPUT_ENGINE_AND_PIPELINE_STAGE3}
  set MAX_NUM_BIT_EQ_PIPELINE_STAGE0 [ipgui::add_param $IPINST -name "MAX_NUM_BIT_EQ_PIPELINE_STAGE0"]
  set_property tooltip {Blocks of bits of the inputs that we want to compare in the first stage} ${MAX_NUM_BIT_EQ_PIPELINE_STAGE0}
  set RELATED_CLOCKS [ipgui::add_param $IPINST -name "RELATED_CLOCKS"]
  set_property tooltip {Phase relation between TDC and SYS clocks} ${RELATED_CLOCKS}
  set CDC_SYNC_STAGES [ipgui::add_param $IPINST -name "CDC_SYNC_STAGES"]
  set_property tooltip {Synchronization CDC stages in the FIFO} ${CDC_SYNC_STAGES}
  set INTERNAL_OVERFLOW_CNT [ipgui::add_param $IPINST -name "INTERNAL_OVERFLOW_CNT"]
  set_property tooltip {Enabling the CEC (if TRUE) or the OC (if FALSE) to count the overflows} ${INTERNAL_OVERFLOW_CNT}
  set AXI4_LENGTH [ipgui::add_param $IPINST -name "AXI4_LENGTH" -widget comboBox]
  set_property tooltip {Positive to specify the length of the data of AXI} ${AXI4_LENGTH}
  set BIT_CALIBRATION [ipgui::add_param $IPINST -name "BIT_CALIBRATION"]
  set_property tooltip {Bit dimension of the calibration table} ${BIT_CALIBRATION}
  set BIT_RESOLUTION [ipgui::add_param $IPINST -name "BIT_RESOLUTION"]
  set_property tooltip {Bit used for the fine part of the timestamp} ${BIT_RESOLUTION}
  set DEBUG_MODE_CC [ipgui::add_param $IPINST -name "DEBUG_MODE_CC"]
  set_property tooltip {Allow to tune in real-time the calibration and read the Charact Curve} ${DEBUG_MODE_CC}
  set DEBUG_MODE_CT [ipgui::add_param $IPINST -name "DEBUG_MODE_CT"]
  set_property tooltip {Allow to tune in real-time the calibration and read the CalibTable} ${DEBUG_MODE_CT}
  set INTEGRATION_METHOD [ipgui::add_param $IPINST -name "INTEGRATION_METHOD" -widget comboBox]
  set_property tooltip {integration method used in magic Calibrator} ${INTEGRATION_METHOD}
  set SAVE_BIT [ipgui::add_param $IPINST -name "SAVE_BIT"]
  set_property tooltip {Use 2^BIT_CALIBARTION (BIT_CALIBARTION +1 bits) if FALSE or 2^BIT_CALIBARTION -1 (BIT_CALIBARTION bits) if TRUE samples for performing the calibration} ${SAVE_BIT}
  set BIT_COARSE_CEC [ipgui::add_param $IPINST -name "BIT_COARSE_CEC"]
  set_property tooltip {Bit Coarse Counter input dimension} ${BIT_COARSE_CEC}
  set MODE_SEL [ipgui::add_param $IPINST -name "MODE_SEL" -widget comboBox]
  set_property tooltip {Choice between the CDC_Synchronizer and the FIFO_Synchronizer} ${MODE_SEL}
  set SYNCH_RELATED_CLOCKS [ipgui::add_param $IPINST -name "SYNCH_RELATED_CLOCKS"]
  set_property tooltip {It specifies if the two clocks are related or not} ${SYNCH_RELATED_CLOCKS}
  set SYNCH_CDC_SYNC_STAGES [ipgui::add_param $IPINST -name "SYNCH_CDC_SYNC_STAGES"]
  set_property tooltip {Number of synchronization stages in the CDC path} ${SYNCH_CDC_SYNC_STAGES}
  set DATA_WIDTH [ipgui::add_param $IPINST -name "DATA_WIDTH"]
  set_property tooltip {Variable that sets the dimensions of the slave and master data} ${DATA_WIDTH}
  set DEST_SYNC_FF [ipgui::add_param $IPINST -name "DEST_SYNC_FF"]
  set_property tooltip {Number of synchronization stages in the CDC path of the destination (master)} ${DEST_SYNC_FF}
  set SYNCH_FIFO_MEMORY_TYPE [ipgui::add_param $IPINST -name "SYNCH_FIFO_MEMORY_TYPE" -widget comboBox]
  set_property tooltip {Choice between the different types of FIFO memory, it can be: auto, block or distributed} ${SYNCH_FIFO_MEMORY_TYPE}
  set FIFO_DEPTH [ipgui::add_param $IPINST -name "FIFO_DEPTH" -widget comboBox]
  set_property tooltip {Depth of the FIFO} ${FIFO_DEPTH}
  set SRC_SYNC_FF [ipgui::add_param $IPINST -name "SRC_SYNC_FF"]
  set_property tooltip {Number of synchronization stages in the CDC path of the source(slave)} ${SRC_SYNC_FF}
  set BIT_NUM_CH [ipgui::add_param $IPINST -name "BIT_NUM_CH"]
  set_property tooltip {Number of bits used for the number of channel} ${BIT_NUM_CH}
  set HOLD_ON_INTEGRAL [ipgui::add_param $IPINST -name "HOLD_ON_INTEGRAL"]
  set_property tooltip {Hold-On integral} ${HOLD_ON_INTEGRAL}
  set HOLD_ON_MIN_MOD [ipgui::add_param $IPINST -name "HOLD_ON_MIN_MOD"]
  set_property tooltip {Hold-On min mod} ${HOLD_ON_MIN_MOD}
  set HOLD_ON_SINGLE_NODE [ipgui::add_param $IPINST -name "HOLD_ON_SINGLE_NODE"]
  set_property tooltip {Hold-On Single Node} ${HOLD_ON_SINGLE_NODE}
  set INJECT_CYCLES [ipgui::add_param $IPINST -name "INJECT_CYCLES"]
  set_property tooltip {Inject Cycles} ${INJECT_CYCLES}
  set NUM_CH [ipgui::add_param $IPINST -name "NUM_CH"]
  set_property tooltip {Number of channel} ${NUM_CH}
  set NUM_NODE [ipgui::add_param $IPINST -name "NUM_NODE"]
  set_property tooltip {Node number} ${NUM_NODE}
  set PASS_THROUGH [ipgui::add_param $IPINST -name "PASS_THROUGH" -widget comboBox]
  set_property tooltip {If Belt-Bus the NodeInserter is Implemented, with Timestamp not there is a simple parallel output} ${PASS_THROUGH}
  set RETAIN_SINGLE_NODE [ipgui::add_param $IPINST -name "RETAIN_SINGLE_NODE"]
  set_property tooltip {Number of retain cycles in a single node} ${RETAIN_SINGLE_NODE}

}

proc update_PARAM_VALUE.BIT_SUB_INT { PARAM_VALUE.BIT_SUB_INT PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update BIT_SUB_INT when any of the dependent parameters in the arguments change
	
	set BIT_SUB_INT ${PARAM_VALUE.BIT_SUB_INT}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set_property value [gen_USERPARAMETER_BIT_SUB_INT_VALUE $values(BIT_SMP_TDL) $values(NUMBER_OF_TDL)] $BIT_SUB_INT
}

proc validate_PARAM_VALUE.BIT_SUB_INT { PARAM_VALUE.BIT_SUB_INT } {
	# Procedure called to validate BIT_SUB_INT
	return true
}

proc update_PARAM_VALUE.CDC_SYNC_STAGES { PARAM_VALUE.CDC_SYNC_STAGES PARAM_VALUE.RELATED_CLOCKS } {
	# Procedure called to update CDC_SYNC_STAGES when any of the dependent parameters in the arguments change
	
	set CDC_SYNC_STAGES ${PARAM_VALUE.CDC_SYNC_STAGES}
	set RELATED_CLOCKS ${PARAM_VALUE.RELATED_CLOCKS}
	set values(RELATED_CLOCKS) [get_property value $RELATED_CLOCKS]
	if { [gen_USERPARAMETER_CDC_SYNC_STAGES_ENABLEMENT $values(RELATED_CLOCKS)] } {
		set_property enabled true $CDC_SYNC_STAGES
	} else {
		set_property enabled false $CDC_SYNC_STAGES
	}
}

proc validate_PARAM_VALUE.CDC_SYNC_STAGES { PARAM_VALUE.CDC_SYNC_STAGES } {
	# Procedure called to validate CDC_SYNC_STAGES
	return true
}

proc update_PARAM_VALUE.CEC_COARSE_CNT_INIT { PARAM_VALUE.CEC_COARSE_CNT_INIT PARAM_VALUE.CEC_VS_CTD_COUNTER } {
	# Procedure called to update CEC_COARSE_CNT_INIT when any of the dependent parameters in the arguments change
	
	set CEC_COARSE_CNT_INIT ${PARAM_VALUE.CEC_COARSE_CNT_INIT}
	set CEC_VS_CTD_COUNTER ${PARAM_VALUE.CEC_VS_CTD_COUNTER}
	set values(CEC_VS_CTD_COUNTER) [get_property value $CEC_VS_CTD_COUNTER]
	if { [gen_USERPARAMETER_CEC_COARSE_CNT_INIT_ENABLEMENT $values(CEC_VS_CTD_COUNTER)] } {
		set_property enabled true $CEC_COARSE_CNT_INIT
	} else {
		set_property enabled false $CEC_COARSE_CNT_INIT
	}
}

proc validate_PARAM_VALUE.CEC_COARSE_CNT_INIT { PARAM_VALUE.CEC_COARSE_CNT_INIT } {
	# Procedure called to validate CEC_COARSE_CNT_INIT
	return true
}

proc update_PARAM_VALUE.DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0 { PARAM_VALUE.DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0 PARAM_VALUE.TYPE_DECODER PARAM_VALUE.MD_VS_TD } {
	# Procedure called to update DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0 when any of the dependent parameters in the arguments change
	
	set DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0 ${PARAM_VALUE.DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0}
	set TYPE_DECODER ${PARAM_VALUE.TYPE_DECODER}
	set MD_VS_TD ${PARAM_VALUE.MD_VS_TD}
	set values(TYPE_DECODER) [get_property value $TYPE_DECODER]
	set values(MD_VS_TD) [get_property value $MD_VS_TD]
	if { [gen_USERPARAMETER_DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0_ENABLEMENT $values(TYPE_DECODER) $values(MD_VS_TD)] } {
		set_property enabled true $DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0
	} else {
		set_property enabled false $DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0
	}
}

proc validate_PARAM_VALUE.DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0 { PARAM_VALUE.DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0 } {
	# Procedure called to validate DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_0
	return true
}

proc update_PARAM_VALUE.DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1 { PARAM_VALUE.DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1 PARAM_VALUE.TYPE_DECODER PARAM_VALUE.MD_VS_TD } {
	# Procedure called to update DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1 when any of the dependent parameters in the arguments change
	
	set DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1 ${PARAM_VALUE.DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1}
	set TYPE_DECODER ${PARAM_VALUE.TYPE_DECODER}
	set MD_VS_TD ${PARAM_VALUE.MD_VS_TD}
	set values(TYPE_DECODER) [get_property value $TYPE_DECODER]
	set values(MD_VS_TD) [get_property value $MD_VS_TD]
	if { [gen_USERPARAMETER_DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1_ENABLEMENT $values(TYPE_DECODER) $values(MD_VS_TD)] } {
		set_property enabled true $DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1
	} else {
		set_property enabled false $DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1
	}
}

proc validate_PARAM_VALUE.DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1 { PARAM_VALUE.DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1 } {
	# Procedure called to validate DECO_LOG_MAX_INPUT_ENGINE_PIPELINE_1
	return true
}

proc update_PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0 { PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0 PARAM_VALUE.TYPE_DECODER PARAM_VALUE.MD_VS_TD } {
	# Procedure called to update DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0 when any of the dependent parameters in the arguments change
	
	set DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0 ${PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0}
	set TYPE_DECODER ${PARAM_VALUE.TYPE_DECODER}
	set MD_VS_TD ${PARAM_VALUE.MD_VS_TD}
	set values(TYPE_DECODER) [get_property value $TYPE_DECODER]
	set values(MD_VS_TD) [get_property value $MD_VS_TD]
	if { [gen_USERPARAMETER_DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0_ENABLEMENT $values(TYPE_DECODER) $values(MD_VS_TD)] } {
		set_property enabled true $DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0
	} else {
		set_property enabled false $DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0
	}
}

proc validate_PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0 { PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0 } {
	# Procedure called to validate DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_0
	return true
}

proc update_PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1 { PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1 PARAM_VALUE.TYPE_DECODER PARAM_VALUE.MD_VS_TD } {
	# Procedure called to update DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1 when any of the dependent parameters in the arguments change
	
	set DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1 ${PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1}
	set TYPE_DECODER ${PARAM_VALUE.TYPE_DECODER}
	set MD_VS_TD ${PARAM_VALUE.MD_VS_TD}
	set values(TYPE_DECODER) [get_property value $TYPE_DECODER]
	set values(MD_VS_TD) [get_property value $MD_VS_TD]
	if { [gen_USERPARAMETER_DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1_ENABLEMENT $values(TYPE_DECODER) $values(MD_VS_TD)] } {
		set_property enabled true $DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1
	} else {
		set_property enabled false $DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1
	}
}

proc validate_PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1 { PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1 } {
	# Procedure called to validate DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_1
	return true
}

proc update_PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2 { PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2 PARAM_VALUE.TYPE_DECODER PARAM_VALUE.MD_VS_TD } {
	# Procedure called to update DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2 when any of the dependent parameters in the arguments change
	
	set DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2 ${PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2}
	set TYPE_DECODER ${PARAM_VALUE.TYPE_DECODER}
	set MD_VS_TD ${PARAM_VALUE.MD_VS_TD}
	set values(TYPE_DECODER) [get_property value $TYPE_DECODER]
	set values(MD_VS_TD) [get_property value $MD_VS_TD]
	if { [gen_USERPARAMETER_DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2_ENABLEMENT $values(TYPE_DECODER) $values(MD_VS_TD)] } {
		set_property enabled true $DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2
	} else {
		set_property enabled false $DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2
	}
}

proc validate_PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2 { PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2 } {
	# Procedure called to validate DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_2
	return true
}

proc update_PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3 { PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3 PARAM_VALUE.TYPE_DECODER PARAM_VALUE.MD_VS_TD } {
	# Procedure called to update DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3 when any of the dependent parameters in the arguments change
	
	set DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3 ${PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3}
	set TYPE_DECODER ${PARAM_VALUE.TYPE_DECODER}
	set MD_VS_TD ${PARAM_VALUE.MD_VS_TD}
	set values(TYPE_DECODER) [get_property value $TYPE_DECODER]
	set values(MD_VS_TD) [get_property value $MD_VS_TD]
	if { [gen_USERPARAMETER_DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3_ENABLEMENT $values(TYPE_DECODER) $values(MD_VS_TD)] } {
		set_property enabled true $DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3
	} else {
		set_property enabled false $DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3
	}
}

proc validate_PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3 { PARAM_VALUE.DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3 } {
	# Procedure called to validate DECO_T2B_MAX_INPUT_ENGINE_PIPELINE_3
	return true
}

proc update_PARAM_VALUE.DEST_SYNC_FF { PARAM_VALUE.DEST_SYNC_FF PARAM_VALUE.MODE_SEL } {
	# Procedure called to update DEST_SYNC_FF when any of the dependent parameters in the arguments change
	
	set DEST_SYNC_FF ${PARAM_VALUE.DEST_SYNC_FF}
	set MODE_SEL ${PARAM_VALUE.MODE_SEL}
	set values(MODE_SEL) [get_property value $MODE_SEL]
	if { [gen_USERPARAMETER_DEST_SYNC_FF_ENABLEMENT $values(MODE_SEL)] } {
		set_property enabled true $DEST_SYNC_FF
	} else {
		set_property enabled false $DEST_SYNC_FF
	}
}

proc validate_PARAM_VALUE.DEST_SYNC_FF { PARAM_VALUE.DEST_SYNC_FF } {
	# Procedure called to validate DEST_SYNC_FF
	return true
}

proc update_PARAM_VALUE.FIFO_DEPTH { PARAM_VALUE.FIFO_DEPTH PARAM_VALUE.MODE_SEL } {
	# Procedure called to update FIFO_DEPTH when any of the dependent parameters in the arguments change
	
	set FIFO_DEPTH ${PARAM_VALUE.FIFO_DEPTH}
	set MODE_SEL ${PARAM_VALUE.MODE_SEL}
	set values(MODE_SEL) [get_property value $MODE_SEL]
	if { [gen_USERPARAMETER_FIFO_DEPTH_ENABLEMENT $values(MODE_SEL)] } {
		set_property enabled true $FIFO_DEPTH
	} else {
		set_property enabled false $FIFO_DEPTH
	}
}

proc validate_PARAM_VALUE.FIFO_DEPTH { PARAM_VALUE.FIFO_DEPTH } {
	# Procedure called to validate FIFO_DEPTH
	return true
}

proc update_PARAM_VALUE.FILE_PATH_NAME_CO_DELAY { PARAM_VALUE.FILE_PATH_NAME_CO_DELAY PARAM_VALUE.SIM_VS_IMP } {
	# Procedure called to update FILE_PATH_NAME_CO_DELAY when any of the dependent parameters in the arguments change
	
	set FILE_PATH_NAME_CO_DELAY ${PARAM_VALUE.FILE_PATH_NAME_CO_DELAY}
	set SIM_VS_IMP ${PARAM_VALUE.SIM_VS_IMP}
	set values(SIM_VS_IMP) [get_property value $SIM_VS_IMP]
	if { [gen_USERPARAMETER_FILE_PATH_NAME_CO_DELAY_ENABLEMENT $values(SIM_VS_IMP)] } {
		set_property enabled true $FILE_PATH_NAME_CO_DELAY
	} else {
		set_property enabled false $FILE_PATH_NAME_CO_DELAY
	}
}

proc validate_PARAM_VALUE.FILE_PATH_NAME_CO_DELAY { PARAM_VALUE.FILE_PATH_NAME_CO_DELAY } {
	# Procedure called to validate FILE_PATH_NAME_CO_DELAY
	return true
}

proc update_PARAM_VALUE.FILE_PATH_NAME_O_DELAY { PARAM_VALUE.FILE_PATH_NAME_O_DELAY PARAM_VALUE.SIM_VS_IMP } {
	# Procedure called to update FILE_PATH_NAME_O_DELAY when any of the dependent parameters in the arguments change
	
	set FILE_PATH_NAME_O_DELAY ${PARAM_VALUE.FILE_PATH_NAME_O_DELAY}
	set SIM_VS_IMP ${PARAM_VALUE.SIM_VS_IMP}
	set values(SIM_VS_IMP) [get_property value $SIM_VS_IMP]
	if { [gen_USERPARAMETER_FILE_PATH_NAME_O_DELAY_ENABLEMENT $values(SIM_VS_IMP)] } {
		set_property enabled true $FILE_PATH_NAME_O_DELAY
	} else {
		set_property enabled false $FILE_PATH_NAME_O_DELAY
	}
}

proc validate_PARAM_VALUE.FILE_PATH_NAME_O_DELAY { PARAM_VALUE.FILE_PATH_NAME_O_DELAY } {
	# Procedure called to validate FILE_PATH_NAME_O_DELAY
	return true
}

proc update_PARAM_VALUE.HOLD_ON_INTEGRAL { PARAM_VALUE.HOLD_ON_INTEGRAL PARAM_VALUE.PASS_THROUGH } {
	# Procedure called to update HOLD_ON_INTEGRAL when any of the dependent parameters in the arguments change
	
	set HOLD_ON_INTEGRAL ${PARAM_VALUE.HOLD_ON_INTEGRAL}
	set PASS_THROUGH ${PARAM_VALUE.PASS_THROUGH}
	set values(PASS_THROUGH) [get_property value $PASS_THROUGH]
	if { [gen_USERPARAMETER_HOLD_ON_INTEGRAL_ENABLEMENT $values(PASS_THROUGH)] } {
		set_property enabled true $HOLD_ON_INTEGRAL
	} else {
		set_property enabled false $HOLD_ON_INTEGRAL
	}
}

proc validate_PARAM_VALUE.HOLD_ON_INTEGRAL { PARAM_VALUE.HOLD_ON_INTEGRAL } {
	# Procedure called to validate HOLD_ON_INTEGRAL
	return true
}

proc update_PARAM_VALUE.HOLD_ON_MIN_MOD { PARAM_VALUE.HOLD_ON_MIN_MOD PARAM_VALUE.PASS_THROUGH } {
	# Procedure called to update HOLD_ON_MIN_MOD when any of the dependent parameters in the arguments change
	
	set HOLD_ON_MIN_MOD ${PARAM_VALUE.HOLD_ON_MIN_MOD}
	set PASS_THROUGH ${PARAM_VALUE.PASS_THROUGH}
	set values(PASS_THROUGH) [get_property value $PASS_THROUGH]
	if { [gen_USERPARAMETER_HOLD_ON_MIN_MOD_ENABLEMENT $values(PASS_THROUGH)] } {
		set_property enabled true $HOLD_ON_MIN_MOD
	} else {
		set_property enabled false $HOLD_ON_MIN_MOD
	}
}

proc validate_PARAM_VALUE.HOLD_ON_MIN_MOD { PARAM_VALUE.HOLD_ON_MIN_MOD } {
	# Procedure called to validate HOLD_ON_MIN_MOD
	return true
}

proc update_PARAM_VALUE.HOLD_ON_SINGLE_NODE { PARAM_VALUE.HOLD_ON_SINGLE_NODE PARAM_VALUE.PASS_THROUGH } {
	# Procedure called to update HOLD_ON_SINGLE_NODE when any of the dependent parameters in the arguments change
	
	set HOLD_ON_SINGLE_NODE ${PARAM_VALUE.HOLD_ON_SINGLE_NODE}
	set PASS_THROUGH ${PARAM_VALUE.PASS_THROUGH}
	set values(PASS_THROUGH) [get_property value $PASS_THROUGH]
	if { [gen_USERPARAMETER_HOLD_ON_SINGLE_NODE_ENABLEMENT $values(PASS_THROUGH)] } {
		set_property enabled true $HOLD_ON_SINGLE_NODE
	} else {
		set_property enabled false $HOLD_ON_SINGLE_NODE
	}
}

proc validate_PARAM_VALUE.HOLD_ON_SINGLE_NODE { PARAM_VALUE.HOLD_ON_SINGLE_NODE } {
	# Procedure called to validate HOLD_ON_SINGLE_NODE
	return true
}

proc update_PARAM_VALUE.INJECT_CYCLES { PARAM_VALUE.INJECT_CYCLES PARAM_VALUE.PASS_THROUGH } {
	# Procedure called to update INJECT_CYCLES when any of the dependent parameters in the arguments change
	
	set INJECT_CYCLES ${PARAM_VALUE.INJECT_CYCLES}
	set PASS_THROUGH ${PARAM_VALUE.PASS_THROUGH}
	set values(PASS_THROUGH) [get_property value $PASS_THROUGH]
	if { [gen_USERPARAMETER_INJECT_CYCLES_ENABLEMENT $values(PASS_THROUGH)] } {
		set_property enabled true $INJECT_CYCLES
	} else {
		set_property enabled false $INJECT_CYCLES
	}
}

proc validate_PARAM_VALUE.INJECT_CYCLES { PARAM_VALUE.INJECT_CYCLES } {
	# Procedure called to validate INJECT_CYCLES
	return true
}

proc update_PARAM_VALUE.MAX_VALID_TAP_POS { PARAM_VALUE.MAX_VALID_TAP_POS PARAM_VALUE.DEBUG_MODE } {
	# Procedure called to update MAX_VALID_TAP_POS when any of the dependent parameters in the arguments change
	
	set MAX_VALID_TAP_POS ${PARAM_VALUE.MAX_VALID_TAP_POS}
	set DEBUG_MODE ${PARAM_VALUE.DEBUG_MODE}
	set values(DEBUG_MODE) [get_property value $DEBUG_MODE]
	if { [gen_USERPARAMETER_MAX_VALID_TAP_POS_ENABLEMENT $values(DEBUG_MODE)] } {
		set_property enabled true $MAX_VALID_TAP_POS
	} else {
		set_property enabled false $MAX_VALID_TAP_POS
	}
}

proc validate_PARAM_VALUE.MAX_VALID_TAP_POS { PARAM_VALUE.MAX_VALID_TAP_POS } {
	# Procedure called to validate MAX_VALID_TAP_POS
	return true
}

proc update_PARAM_VALUE.MIN_VALID_TAP_POS { PARAM_VALUE.MIN_VALID_TAP_POS PARAM_VALUE.DEBUG_MODE } {
	# Procedure called to update MIN_VALID_TAP_POS when any of the dependent parameters in the arguments change
	
	set MIN_VALID_TAP_POS ${PARAM_VALUE.MIN_VALID_TAP_POS}
	set DEBUG_MODE ${PARAM_VALUE.DEBUG_MODE}
	set values(DEBUG_MODE) [get_property value $DEBUG_MODE]
	if { [gen_USERPARAMETER_MIN_VALID_TAP_POS_ENABLEMENT $values(DEBUG_MODE)] } {
		set_property enabled true $MIN_VALID_TAP_POS
	} else {
		set_property enabled false $MIN_VALID_TAP_POS
	}
}

proc validate_PARAM_VALUE.MIN_VALID_TAP_POS { PARAM_VALUE.MIN_VALID_TAP_POS } {
	# Procedure called to validate MIN_VALID_TAP_POS
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_0 { PARAM_VALUE.OFFSET_TAP_TDL_0 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_0 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_0 ${PARAM_VALUE.OFFSET_TAP_TDL_0}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_0_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_0
	} else {
		set_property enabled false $OFFSET_TAP_TDL_0
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_0 { PARAM_VALUE.OFFSET_TAP_TDL_0 } {
	# Procedure called to validate OFFSET_TAP_TDL_0
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_1 { PARAM_VALUE.OFFSET_TAP_TDL_1 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_1 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_1 ${PARAM_VALUE.OFFSET_TAP_TDL_1}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_1_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_1
	} else {
		set_property enabled false $OFFSET_TAP_TDL_1
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_1 { PARAM_VALUE.OFFSET_TAP_TDL_1 } {
	# Procedure called to validate OFFSET_TAP_TDL_1
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_10 { PARAM_VALUE.OFFSET_TAP_TDL_10 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_10 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_10 ${PARAM_VALUE.OFFSET_TAP_TDL_10}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_10_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_10
	} else {
		set_property enabled false $OFFSET_TAP_TDL_10
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_10 { PARAM_VALUE.OFFSET_TAP_TDL_10 } {
	# Procedure called to validate OFFSET_TAP_TDL_10
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_11 { PARAM_VALUE.OFFSET_TAP_TDL_11 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_11 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_11 ${PARAM_VALUE.OFFSET_TAP_TDL_11}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_11_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_11
	} else {
		set_property enabled false $OFFSET_TAP_TDL_11
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_11 { PARAM_VALUE.OFFSET_TAP_TDL_11 } {
	# Procedure called to validate OFFSET_TAP_TDL_11
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_12 { PARAM_VALUE.OFFSET_TAP_TDL_12 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_12 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_12 ${PARAM_VALUE.OFFSET_TAP_TDL_12}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_12_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_12
	} else {
		set_property enabled false $OFFSET_TAP_TDL_12
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_12 { PARAM_VALUE.OFFSET_TAP_TDL_12 } {
	# Procedure called to validate OFFSET_TAP_TDL_12
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_13 { PARAM_VALUE.OFFSET_TAP_TDL_13 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_13 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_13 ${PARAM_VALUE.OFFSET_TAP_TDL_13}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_13_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_13
	} else {
		set_property enabled false $OFFSET_TAP_TDL_13
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_13 { PARAM_VALUE.OFFSET_TAP_TDL_13 } {
	# Procedure called to validate OFFSET_TAP_TDL_13
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_14 { PARAM_VALUE.OFFSET_TAP_TDL_14 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_14 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_14 ${PARAM_VALUE.OFFSET_TAP_TDL_14}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_14_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_14
	} else {
		set_property enabled false $OFFSET_TAP_TDL_14
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_14 { PARAM_VALUE.OFFSET_TAP_TDL_14 } {
	# Procedure called to validate OFFSET_TAP_TDL_14
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_15 { PARAM_VALUE.OFFSET_TAP_TDL_15 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_15 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_15 ${PARAM_VALUE.OFFSET_TAP_TDL_15}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_15_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_15
	} else {
		set_property enabled false $OFFSET_TAP_TDL_15
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_15 { PARAM_VALUE.OFFSET_TAP_TDL_15 } {
	# Procedure called to validate OFFSET_TAP_TDL_15
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_2 { PARAM_VALUE.OFFSET_TAP_TDL_2 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_2 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_2 ${PARAM_VALUE.OFFSET_TAP_TDL_2}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_2_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_2
	} else {
		set_property enabled false $OFFSET_TAP_TDL_2
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_2 { PARAM_VALUE.OFFSET_TAP_TDL_2 } {
	# Procedure called to validate OFFSET_TAP_TDL_2
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_3 { PARAM_VALUE.OFFSET_TAP_TDL_3 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_3 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_3 ${PARAM_VALUE.OFFSET_TAP_TDL_3}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_3_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_3
	} else {
		set_property enabled false $OFFSET_TAP_TDL_3
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_3 { PARAM_VALUE.OFFSET_TAP_TDL_3 } {
	# Procedure called to validate OFFSET_TAP_TDL_3
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_4 { PARAM_VALUE.OFFSET_TAP_TDL_4 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_4 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_4 ${PARAM_VALUE.OFFSET_TAP_TDL_4}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_4_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_4
	} else {
		set_property enabled false $OFFSET_TAP_TDL_4
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_4 { PARAM_VALUE.OFFSET_TAP_TDL_4 } {
	# Procedure called to validate OFFSET_TAP_TDL_4
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_5 { PARAM_VALUE.OFFSET_TAP_TDL_5 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_5 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_5 ${PARAM_VALUE.OFFSET_TAP_TDL_5}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_5_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_5
	} else {
		set_property enabled false $OFFSET_TAP_TDL_5
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_5 { PARAM_VALUE.OFFSET_TAP_TDL_5 } {
	# Procedure called to validate OFFSET_TAP_TDL_5
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_6 { PARAM_VALUE.OFFSET_TAP_TDL_6 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_6 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_6 ${PARAM_VALUE.OFFSET_TAP_TDL_6}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_6_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_6
	} else {
		set_property enabled false $OFFSET_TAP_TDL_6
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_6 { PARAM_VALUE.OFFSET_TAP_TDL_6 } {
	# Procedure called to validate OFFSET_TAP_TDL_6
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_7 { PARAM_VALUE.OFFSET_TAP_TDL_7 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_7 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_7 ${PARAM_VALUE.OFFSET_TAP_TDL_7}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_7_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_7
	} else {
		set_property enabled false $OFFSET_TAP_TDL_7
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_7 { PARAM_VALUE.OFFSET_TAP_TDL_7 } {
	# Procedure called to validate OFFSET_TAP_TDL_7
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_8 { PARAM_VALUE.OFFSET_TAP_TDL_8 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_8 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_8 ${PARAM_VALUE.OFFSET_TAP_TDL_8}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_8_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_8
	} else {
		set_property enabled false $OFFSET_TAP_TDL_8
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_8 { PARAM_VALUE.OFFSET_TAP_TDL_8 } {
	# Procedure called to validate OFFSET_TAP_TDL_8
	return true
}

proc update_PARAM_VALUE.OFFSET_TAP_TDL_9 { PARAM_VALUE.OFFSET_TAP_TDL_9 PARAM_VALUE.NUMBER_OF_TDL PARAM_VALUE.BIT_SMP_TDL PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update OFFSET_TAP_TDL_9 when any of the dependent parameters in the arguments change
	
	set OFFSET_TAP_TDL_9 ${PARAM_VALUE.OFFSET_TAP_TDL_9}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set BIT_SMP_TDL ${PARAM_VALUE.BIT_SMP_TDL}
	set NUM_TAP_TDL ${PARAM_VALUE.NUM_TAP_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	set values(BIT_SMP_TDL) [get_property value $BIT_SMP_TDL]
	set values(NUM_TAP_TDL) [get_property value $NUM_TAP_TDL]
	if { [gen_USERPARAMETER_OFFSET_TAP_TDL_9_ENABLEMENT $values(NUMBER_OF_TDL) $values(BIT_SMP_TDL) $values(NUM_TAP_TDL)] } {
		set_property enabled true $OFFSET_TAP_TDL_9
	} else {
		set_property enabled false $OFFSET_TAP_TDL_9
	}
}

proc validate_PARAM_VALUE.OFFSET_TAP_TDL_9 { PARAM_VALUE.OFFSET_TAP_TDL_9 } {
	# Procedure called to validate OFFSET_TAP_TDL_9
	return true
}

proc update_PARAM_VALUE.OPTIMIZATION_MODE { PARAM_VALUE.OPTIMIZATION_MODE PARAM_VALUE.MD_VS_TD } {
	# Procedure called to update OPTIMIZATION_MODE when any of the dependent parameters in the arguments change
	
	set OPTIMIZATION_MODE ${PARAM_VALUE.OPTIMIZATION_MODE}
	set MD_VS_TD ${PARAM_VALUE.MD_VS_TD}
	set values(MD_VS_TD) [get_property value $MD_VS_TD]
	if { [gen_USERPARAMETER_OPTIMIZATION_MODE_ENABLEMENT $values(MD_VS_TD)] } {
		set_property enabled true $OPTIMIZATION_MODE
	} else {
		set_property enabled false $OPTIMIZATION_MODE
	}
}

proc validate_PARAM_VALUE.OPTIMIZATION_MODE { PARAM_VALUE.OPTIMIZATION_MODE } {
	# Procedure called to validate OPTIMIZATION_MODE
	return true
}

proc update_PARAM_VALUE.PRINT_FULL_REPORT { PARAM_VALUE.PRINT_FULL_REPORT PARAM_VALUE.MD_VS_TD } {
	# Procedure called to update PRINT_FULL_REPORT when any of the dependent parameters in the arguments change
	
	set PRINT_FULL_REPORT ${PARAM_VALUE.PRINT_FULL_REPORT}
	set MD_VS_TD ${PARAM_VALUE.MD_VS_TD}
	set values(MD_VS_TD) [get_property value $MD_VS_TD]
	if { [gen_USERPARAMETER_PRINT_FULL_REPORT_ENABLEMENT $values(MD_VS_TD)] } {
		set_property enabled true $PRINT_FULL_REPORT
	} else {
		set_property enabled false $PRINT_FULL_REPORT
	}
}

proc validate_PARAM_VALUE.PRINT_FULL_REPORT { PARAM_VALUE.PRINT_FULL_REPORT } {
	# Procedure called to validate PRINT_FULL_REPORT
	return true
}

proc update_PARAM_VALUE.RETAIN_SINGLE_NODE { PARAM_VALUE.RETAIN_SINGLE_NODE PARAM_VALUE.PASS_THROUGH } {
	# Procedure called to update RETAIN_SINGLE_NODE when any of the dependent parameters in the arguments change
	
	set RETAIN_SINGLE_NODE ${PARAM_VALUE.RETAIN_SINGLE_NODE}
	set PASS_THROUGH ${PARAM_VALUE.PASS_THROUGH}
	set values(PASS_THROUGH) [get_property value $PASS_THROUGH]
	if { [gen_USERPARAMETER_RETAIN_SINGLE_NODE_ENABLEMENT $values(PASS_THROUGH)] } {
		set_property enabled true $RETAIN_SINGLE_NODE
	} else {
		set_property enabled false $RETAIN_SINGLE_NODE
	}
}

proc validate_PARAM_VALUE.RETAIN_SINGLE_NODE { PARAM_VALUE.RETAIN_SINGLE_NODE } {
	# Procedure called to validate RETAIN_SINGLE_NODE
	return true
}

proc update_PARAM_VALUE.SRC_SYNC_FF { PARAM_VALUE.SRC_SYNC_FF PARAM_VALUE.MODE_SEL } {
	# Procedure called to update SRC_SYNC_FF when any of the dependent parameters in the arguments change
	
	set SRC_SYNC_FF ${PARAM_VALUE.SRC_SYNC_FF}
	set MODE_SEL ${PARAM_VALUE.MODE_SEL}
	set values(MODE_SEL) [get_property value $MODE_SEL]
	if { [gen_USERPARAMETER_SRC_SYNC_FF_ENABLEMENT $values(MODE_SEL)] } {
		set_property enabled true $SRC_SYNC_FF
	} else {
		set_property enabled false $SRC_SYNC_FF
	}
}

proc validate_PARAM_VALUE.SRC_SYNC_FF { PARAM_VALUE.SRC_SYNC_FF } {
	# Procedure called to validate SRC_SYNC_FF
	return true
}

proc update_PARAM_VALUE.STEP_VALID_TAP_POS { PARAM_VALUE.STEP_VALID_TAP_POS PARAM_VALUE.DEBUG_MODE } {
	# Procedure called to update STEP_VALID_TAP_POS when any of the dependent parameters in the arguments change
	
	set STEP_VALID_TAP_POS ${PARAM_VALUE.STEP_VALID_TAP_POS}
	set DEBUG_MODE ${PARAM_VALUE.DEBUG_MODE}
	set values(DEBUG_MODE) [get_property value $DEBUG_MODE]
	if { [gen_USERPARAMETER_STEP_VALID_TAP_POS_ENABLEMENT $values(DEBUG_MODE)] } {
		set_property enabled true $STEP_VALID_TAP_POS
	} else {
		set_property enabled false $STEP_VALID_TAP_POS
	}
}

proc validate_PARAM_VALUE.STEP_VALID_TAP_POS { PARAM_VALUE.STEP_VALID_TAP_POS } {
	# Procedure called to validate STEP_VALID_TAP_POS
	return true
}

proc update_PARAM_VALUE.SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0 { PARAM_VALUE.SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0 PARAM_VALUE.MD_VS_TD } {
	# Procedure called to update SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0 when any of the dependent parameters in the arguments change
	
	set SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0 ${PARAM_VALUE.SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0}
	set MD_VS_TD ${PARAM_VALUE.MD_VS_TD}
	set values(MD_VS_TD) [get_property value $MD_VS_TD]
	if { [gen_USERPARAMETER_SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0_ENABLEMENT $values(MD_VS_TD)] } {
		set_property enabled true $SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0
	} else {
		set_property enabled false $SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0
	}
}

proc validate_PARAM_VALUE.SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0 { PARAM_VALUE.SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0 } {
	# Procedure called to validate SUB_INT_MAX_INPUT_ENGINE_PIPELINE_0
	return true
}

proc update_PARAM_VALUE.SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1 { PARAM_VALUE.SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1 PARAM_VALUE.MD_VS_TD } {
	# Procedure called to update SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1 when any of the dependent parameters in the arguments change
	
	set SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1 ${PARAM_VALUE.SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1}
	set MD_VS_TD ${PARAM_VALUE.MD_VS_TD}
	set values(MD_VS_TD) [get_property value $MD_VS_TD]
	if { [gen_USERPARAMETER_SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1_ENABLEMENT $values(MD_VS_TD)] } {
		set_property enabled true $SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1
	} else {
		set_property enabled false $SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1
	}
}

proc validate_PARAM_VALUE.SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1 { PARAM_VALUE.SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1 } {
	# Procedure called to validate SUB_INT_MAX_INPUT_ENGINE_PIPELINE_1
	return true
}

proc update_PARAM_VALUE.SYNCH_CDC_SYNC_STAGES { PARAM_VALUE.SYNCH_CDC_SYNC_STAGES PARAM_VALUE.MODE_SEL PARAM_VALUE.RELATED_CLOCKS } {
	# Procedure called to update SYNCH_CDC_SYNC_STAGES when any of the dependent parameters in the arguments change
	
	set SYNCH_CDC_SYNC_STAGES ${PARAM_VALUE.SYNCH_CDC_SYNC_STAGES}
	set MODE_SEL ${PARAM_VALUE.MODE_SEL}
	set RELATED_CLOCKS ${PARAM_VALUE.RELATED_CLOCKS}
	set values(MODE_SEL) [get_property value $MODE_SEL]
	set values(RELATED_CLOCKS) [get_property value $RELATED_CLOCKS]
	if { [gen_USERPARAMETER_SYNCH_CDC_SYNC_STAGES_ENABLEMENT $values(MODE_SEL) $values(RELATED_CLOCKS)] } {
		set_property enabled true $SYNCH_CDC_SYNC_STAGES
	} else {
		set_property enabled false $SYNCH_CDC_SYNC_STAGES
	}
}

proc validate_PARAM_VALUE.SYNCH_CDC_SYNC_STAGES { PARAM_VALUE.SYNCH_CDC_SYNC_STAGES } {
	# Procedure called to validate SYNCH_CDC_SYNC_STAGES
	return true
}

proc update_PARAM_VALUE.SYNCH_FIFO_MEMORY_TYPE { PARAM_VALUE.SYNCH_FIFO_MEMORY_TYPE PARAM_VALUE.MODE_SEL } {
	# Procedure called to update SYNCH_FIFO_MEMORY_TYPE when any of the dependent parameters in the arguments change
	
	set SYNCH_FIFO_MEMORY_TYPE ${PARAM_VALUE.SYNCH_FIFO_MEMORY_TYPE}
	set MODE_SEL ${PARAM_VALUE.MODE_SEL}
	set values(MODE_SEL) [get_property value $MODE_SEL]
	if { [gen_USERPARAMETER_SYNCH_FIFO_MEMORY_TYPE_ENABLEMENT $values(MODE_SEL)] } {
		set_property enabled true $SYNCH_FIFO_MEMORY_TYPE
	} else {
		set_property enabled false $SYNCH_FIFO_MEMORY_TYPE
	}
}

proc validate_PARAM_VALUE.SYNCH_FIFO_MEMORY_TYPE { PARAM_VALUE.SYNCH_FIFO_MEMORY_TYPE } {
	# Procedure called to validate SYNCH_FIFO_MEMORY_TYPE
	return true
}

proc update_PARAM_VALUE.SYNCH_RELATED_CLOCKS { PARAM_VALUE.SYNCH_RELATED_CLOCKS PARAM_VALUE.MODE_SEL } {
	# Procedure called to update SYNCH_RELATED_CLOCKS when any of the dependent parameters in the arguments change
	
	set SYNCH_RELATED_CLOCKS ${PARAM_VALUE.SYNCH_RELATED_CLOCKS}
	set MODE_SEL ${PARAM_VALUE.MODE_SEL}
	set values(MODE_SEL) [get_property value $MODE_SEL]
	if { [gen_USERPARAMETER_SYNCH_RELATED_CLOCKS_ENABLEMENT $values(MODE_SEL)] } {
		set_property enabled true $SYNCH_RELATED_CLOCKS
	} else {
		set_property enabled false $SYNCH_RELATED_CLOCKS
	}
}

proc validate_PARAM_VALUE.SYNCH_RELATED_CLOCKS { PARAM_VALUE.SYNCH_RELATED_CLOCKS } {
	# Procedure called to validate SYNCH_RELATED_CLOCKS
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_0 { PARAM_VALUE.TYPE_EDGE_0 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_0 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_0 ${PARAM_VALUE.TYPE_EDGE_0}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_0_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_0
	} else {
		set_property enabled false $TYPE_EDGE_0
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_0 { PARAM_VALUE.TYPE_EDGE_0 } {
	# Procedure called to validate TYPE_EDGE_0
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_1 { PARAM_VALUE.TYPE_EDGE_1 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_1 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_1 ${PARAM_VALUE.TYPE_EDGE_1}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_1_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_1
	} else {
		set_property enabled false $TYPE_EDGE_1
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_1 { PARAM_VALUE.TYPE_EDGE_1 } {
	# Procedure called to validate TYPE_EDGE_1
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_10 { PARAM_VALUE.TYPE_EDGE_10 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_10 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_10 ${PARAM_VALUE.TYPE_EDGE_10}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_10_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_10
	} else {
		set_property enabled false $TYPE_EDGE_10
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_10 { PARAM_VALUE.TYPE_EDGE_10 } {
	# Procedure called to validate TYPE_EDGE_10
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_11 { PARAM_VALUE.TYPE_EDGE_11 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_11 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_11 ${PARAM_VALUE.TYPE_EDGE_11}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_11_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_11
	} else {
		set_property enabled false $TYPE_EDGE_11
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_11 { PARAM_VALUE.TYPE_EDGE_11 } {
	# Procedure called to validate TYPE_EDGE_11
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_12 { PARAM_VALUE.TYPE_EDGE_12 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_12 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_12 ${PARAM_VALUE.TYPE_EDGE_12}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_12_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_12
	} else {
		set_property enabled false $TYPE_EDGE_12
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_12 { PARAM_VALUE.TYPE_EDGE_12 } {
	# Procedure called to validate TYPE_EDGE_12
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_13 { PARAM_VALUE.TYPE_EDGE_13 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_13 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_13 ${PARAM_VALUE.TYPE_EDGE_13}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_13_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_13
	} else {
		set_property enabled false $TYPE_EDGE_13
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_13 { PARAM_VALUE.TYPE_EDGE_13 } {
	# Procedure called to validate TYPE_EDGE_13
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_14 { PARAM_VALUE.TYPE_EDGE_14 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_14 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_14 ${PARAM_VALUE.TYPE_EDGE_14}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_14_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_14
	} else {
		set_property enabled false $TYPE_EDGE_14
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_14 { PARAM_VALUE.TYPE_EDGE_14 } {
	# Procedure called to validate TYPE_EDGE_14
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_15 { PARAM_VALUE.TYPE_EDGE_15 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_15 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_15 ${PARAM_VALUE.TYPE_EDGE_15}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_15_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_15
	} else {
		set_property enabled false $TYPE_EDGE_15
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_15 { PARAM_VALUE.TYPE_EDGE_15 } {
	# Procedure called to validate TYPE_EDGE_15
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_2 { PARAM_VALUE.TYPE_EDGE_2 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_2 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_2 ${PARAM_VALUE.TYPE_EDGE_2}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_2_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_2
	} else {
		set_property enabled false $TYPE_EDGE_2
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_2 { PARAM_VALUE.TYPE_EDGE_2 } {
	# Procedure called to validate TYPE_EDGE_2
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_3 { PARAM_VALUE.TYPE_EDGE_3 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_3 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_3 ${PARAM_VALUE.TYPE_EDGE_3}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_3_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_3
	} else {
		set_property enabled false $TYPE_EDGE_3
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_3 { PARAM_VALUE.TYPE_EDGE_3 } {
	# Procedure called to validate TYPE_EDGE_3
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_4 { PARAM_VALUE.TYPE_EDGE_4 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_4 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_4 ${PARAM_VALUE.TYPE_EDGE_4}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_4_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_4
	} else {
		set_property enabled false $TYPE_EDGE_4
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_4 { PARAM_VALUE.TYPE_EDGE_4 } {
	# Procedure called to validate TYPE_EDGE_4
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_5 { PARAM_VALUE.TYPE_EDGE_5 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_5 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_5 ${PARAM_VALUE.TYPE_EDGE_5}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_5_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_5
	} else {
		set_property enabled false $TYPE_EDGE_5
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_5 { PARAM_VALUE.TYPE_EDGE_5 } {
	# Procedure called to validate TYPE_EDGE_5
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_6 { PARAM_VALUE.TYPE_EDGE_6 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_6 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_6 ${PARAM_VALUE.TYPE_EDGE_6}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_6_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_6
	} else {
		set_property enabled false $TYPE_EDGE_6
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_6 { PARAM_VALUE.TYPE_EDGE_6 } {
	# Procedure called to validate TYPE_EDGE_6
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_7 { PARAM_VALUE.TYPE_EDGE_7 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_7 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_7 ${PARAM_VALUE.TYPE_EDGE_7}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_7_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_7
	} else {
		set_property enabled false $TYPE_EDGE_7
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_7 { PARAM_VALUE.TYPE_EDGE_7 } {
	# Procedure called to validate TYPE_EDGE_7
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_8 { PARAM_VALUE.TYPE_EDGE_8 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_8 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_8 ${PARAM_VALUE.TYPE_EDGE_8}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_8_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_8
	} else {
		set_property enabled false $TYPE_EDGE_8
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_8 { PARAM_VALUE.TYPE_EDGE_8 } {
	# Procedure called to validate TYPE_EDGE_8
	return true
}

proc update_PARAM_VALUE.TYPE_EDGE_9 { PARAM_VALUE.TYPE_EDGE_9 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_EDGE_9 when any of the dependent parameters in the arguments change
	
	set TYPE_EDGE_9 ${PARAM_VALUE.TYPE_EDGE_9}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_EDGE_9_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_EDGE_9
	} else {
		set_property enabled false $TYPE_EDGE_9
	}
}

proc validate_PARAM_VALUE.TYPE_EDGE_9 { PARAM_VALUE.TYPE_EDGE_9 } {
	# Procedure called to validate TYPE_EDGE_9
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_0 { PARAM_VALUE.TYPE_TDL_0 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_0 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_0 ${PARAM_VALUE.TYPE_TDL_0}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_0_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_0
	} else {
		set_property enabled false $TYPE_TDL_0
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_0 { PARAM_VALUE.TYPE_TDL_0 } {
	# Procedure called to validate TYPE_TDL_0
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_1 { PARAM_VALUE.TYPE_TDL_1 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_1 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_1 ${PARAM_VALUE.TYPE_TDL_1}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_1_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_1
	} else {
		set_property enabled false $TYPE_TDL_1
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_1 { PARAM_VALUE.TYPE_TDL_1 } {
	# Procedure called to validate TYPE_TDL_1
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_10 { PARAM_VALUE.TYPE_TDL_10 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_10 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_10 ${PARAM_VALUE.TYPE_TDL_10}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_10_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_10
	} else {
		set_property enabled false $TYPE_TDL_10
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_10 { PARAM_VALUE.TYPE_TDL_10 } {
	# Procedure called to validate TYPE_TDL_10
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_11 { PARAM_VALUE.TYPE_TDL_11 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_11 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_11 ${PARAM_VALUE.TYPE_TDL_11}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_11_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_11
	} else {
		set_property enabled false $TYPE_TDL_11
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_11 { PARAM_VALUE.TYPE_TDL_11 } {
	# Procedure called to validate TYPE_TDL_11
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_12 { PARAM_VALUE.TYPE_TDL_12 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_12 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_12 ${PARAM_VALUE.TYPE_TDL_12}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_12_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_12
	} else {
		set_property enabled false $TYPE_TDL_12
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_12 { PARAM_VALUE.TYPE_TDL_12 } {
	# Procedure called to validate TYPE_TDL_12
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_13 { PARAM_VALUE.TYPE_TDL_13 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_13 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_13 ${PARAM_VALUE.TYPE_TDL_13}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_13_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_13
	} else {
		set_property enabled false $TYPE_TDL_13
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_13 { PARAM_VALUE.TYPE_TDL_13 } {
	# Procedure called to validate TYPE_TDL_13
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_14 { PARAM_VALUE.TYPE_TDL_14 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_14 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_14 ${PARAM_VALUE.TYPE_TDL_14}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_14_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_14
	} else {
		set_property enabled false $TYPE_TDL_14
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_14 { PARAM_VALUE.TYPE_TDL_14 } {
	# Procedure called to validate TYPE_TDL_14
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_15 { PARAM_VALUE.TYPE_TDL_15 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_15 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_15 ${PARAM_VALUE.TYPE_TDL_15}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_15_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_15
	} else {
		set_property enabled false $TYPE_TDL_15
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_15 { PARAM_VALUE.TYPE_TDL_15 } {
	# Procedure called to validate TYPE_TDL_15
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_2 { PARAM_VALUE.TYPE_TDL_2 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_2 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_2 ${PARAM_VALUE.TYPE_TDL_2}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_2_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_2
	} else {
		set_property enabled false $TYPE_TDL_2
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_2 { PARAM_VALUE.TYPE_TDL_2 } {
	# Procedure called to validate TYPE_TDL_2
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_3 { PARAM_VALUE.TYPE_TDL_3 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_3 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_3 ${PARAM_VALUE.TYPE_TDL_3}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_3_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_3
	} else {
		set_property enabled false $TYPE_TDL_3
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_3 { PARAM_VALUE.TYPE_TDL_3 } {
	# Procedure called to validate TYPE_TDL_3
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_4 { PARAM_VALUE.TYPE_TDL_4 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_4 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_4 ${PARAM_VALUE.TYPE_TDL_4}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_4_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_4
	} else {
		set_property enabled false $TYPE_TDL_4
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_4 { PARAM_VALUE.TYPE_TDL_4 } {
	# Procedure called to validate TYPE_TDL_4
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_5 { PARAM_VALUE.TYPE_TDL_5 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_5 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_5 ${PARAM_VALUE.TYPE_TDL_5}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_5_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_5
	} else {
		set_property enabled false $TYPE_TDL_5
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_5 { PARAM_VALUE.TYPE_TDL_5 } {
	# Procedure called to validate TYPE_TDL_5
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_6 { PARAM_VALUE.TYPE_TDL_6 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_6 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_6 ${PARAM_VALUE.TYPE_TDL_6}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_6_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_6
	} else {
		set_property enabled false $TYPE_TDL_6
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_6 { PARAM_VALUE.TYPE_TDL_6 } {
	# Procedure called to validate TYPE_TDL_6
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_7 { PARAM_VALUE.TYPE_TDL_7 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_7 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_7 ${PARAM_VALUE.TYPE_TDL_7}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_7_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_7
	} else {
		set_property enabled false $TYPE_TDL_7
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_7 { PARAM_VALUE.TYPE_TDL_7 } {
	# Procedure called to validate TYPE_TDL_7
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_8 { PARAM_VALUE.TYPE_TDL_8 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_8 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_8 ${PARAM_VALUE.TYPE_TDL_8}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_8_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_8
	} else {
		set_property enabled false $TYPE_TDL_8
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_8 { PARAM_VALUE.TYPE_TDL_8 } {
	# Procedure called to validate TYPE_TDL_8
	return true
}

proc update_PARAM_VALUE.TYPE_TDL_9 { PARAM_VALUE.TYPE_TDL_9 PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update TYPE_TDL_9 when any of the dependent parameters in the arguments change
	
	set TYPE_TDL_9 ${PARAM_VALUE.TYPE_TDL_9}
	set NUMBER_OF_TDL ${PARAM_VALUE.NUMBER_OF_TDL}
	set values(NUMBER_OF_TDL) [get_property value $NUMBER_OF_TDL]
	if { [gen_USERPARAMETER_TYPE_TDL_9_ENABLEMENT $values(NUMBER_OF_TDL)] } {
		set_property enabled true $TYPE_TDL_9
	} else {
		set_property enabled false $TYPE_TDL_9
	}
}

proc validate_PARAM_VALUE.TYPE_TDL_9 { PARAM_VALUE.TYPE_TDL_9 } {
	# Procedure called to validate TYPE_TDL_9
	return true
}

proc update_PARAM_VALUE.WEIGHT_AREA_VS_TIME_PERCENT { PARAM_VALUE.WEIGHT_AREA_VS_TIME_PERCENT PARAM_VALUE.OPTIMIZATION_MODE PARAM_VALUE.MD_VS_TD } {
	# Procedure called to update WEIGHT_AREA_VS_TIME_PERCENT when any of the dependent parameters in the arguments change
	
	set WEIGHT_AREA_VS_TIME_PERCENT ${PARAM_VALUE.WEIGHT_AREA_VS_TIME_PERCENT}
	set OPTIMIZATION_MODE ${PARAM_VALUE.OPTIMIZATION_MODE}
	set MD_VS_TD ${PARAM_VALUE.MD_VS_TD}
	set values(OPTIMIZATION_MODE) [get_property value $OPTIMIZATION_MODE]
	set values(MD_VS_TD) [get_property value $MD_VS_TD]
	if { [gen_USERPARAMETER_WEIGHT_AREA_VS_TIME_PERCENT_ENABLEMENT $values(OPTIMIZATION_MODE) $values(MD_VS_TD)] } {
		set_property enabled true $WEIGHT_AREA_VS_TIME_PERCENT
	} else {
		set_property enabled false $WEIGHT_AREA_VS_TIME_PERCENT
	}
}

proc validate_PARAM_VALUE.WEIGHT_AREA_VS_TIME_PERCENT { PARAM_VALUE.WEIGHT_AREA_VS_TIME_PERCENT } {
	# Procedure called to validate WEIGHT_AREA_VS_TIME_PERCENT
	return true
}

proc update_PARAM_VALUE.AXI4_LENGTH { PARAM_VALUE.AXI4_LENGTH } {
	# Procedure called to update AXI4_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI4_LENGTH { PARAM_VALUE.AXI4_LENGTH } {
	# Procedure called to validate AXI4_LENGTH
	return true
}

proc update_PARAM_VALUE.BIT_BUBBLE { PARAM_VALUE.BIT_BUBBLE } {
	# Procedure called to update BIT_BUBBLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIT_BUBBLE { PARAM_VALUE.BIT_BUBBLE } {
	# Procedure called to validate BIT_BUBBLE
	return true
}

proc update_PARAM_VALUE.BIT_CALIBRATION { PARAM_VALUE.BIT_CALIBRATION } {
	# Procedure called to update BIT_CALIBRATION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIT_CALIBRATION { PARAM_VALUE.BIT_CALIBRATION } {
	# Procedure called to validate BIT_CALIBRATION
	return true
}

proc update_PARAM_VALUE.BIT_COARSE { PARAM_VALUE.BIT_COARSE } {
	# Procedure called to update BIT_COARSE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIT_COARSE { PARAM_VALUE.BIT_COARSE } {
	# Procedure called to validate BIT_COARSE
	return true
}

proc update_PARAM_VALUE.BIT_COARSE_CEC { PARAM_VALUE.BIT_COARSE_CEC } {
	# Procedure called to update BIT_COARSE_CEC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIT_COARSE_CEC { PARAM_VALUE.BIT_COARSE_CEC } {
	# Procedure called to validate BIT_COARSE_CEC
	return true
}

proc update_PARAM_VALUE.BIT_FID { PARAM_VALUE.BIT_FID } {
	# Procedure called to update BIT_FID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIT_FID { PARAM_VALUE.BIT_FID } {
	# Procedure called to validate BIT_FID
	return true
}

proc update_PARAM_VALUE.BIT_NUM_CH { PARAM_VALUE.BIT_NUM_CH } {
	# Procedure called to update BIT_NUM_CH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIT_NUM_CH { PARAM_VALUE.BIT_NUM_CH } {
	# Procedure called to validate BIT_NUM_CH
	return true
}

proc update_PARAM_VALUE.BIT_PIPE_COARSE { PARAM_VALUE.BIT_PIPE_COARSE } {
	# Procedure called to update BIT_PIPE_COARSE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIT_PIPE_COARSE { PARAM_VALUE.BIT_PIPE_COARSE } {
	# Procedure called to validate BIT_PIPE_COARSE
	return true
}

proc update_PARAM_VALUE.BIT_RESOLUTION { PARAM_VALUE.BIT_RESOLUTION } {
	# Procedure called to update BIT_RESOLUTION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIT_RESOLUTION { PARAM_VALUE.BIT_RESOLUTION } {
	# Procedure called to validate BIT_RESOLUTION
	return true
}

proc update_PARAM_VALUE.BIT_SMP_PRE_TDL { PARAM_VALUE.BIT_SMP_PRE_TDL } {
	# Procedure called to update BIT_SMP_PRE_TDL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIT_SMP_PRE_TDL { PARAM_VALUE.BIT_SMP_PRE_TDL } {
	# Procedure called to validate BIT_SMP_PRE_TDL
	return true
}

proc update_PARAM_VALUE.BIT_SMP_TDL { PARAM_VALUE.BIT_SMP_TDL } {
	# Procedure called to update BIT_SMP_TDL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIT_SMP_TDL { PARAM_VALUE.BIT_SMP_TDL } {
	# Procedure called to validate BIT_SMP_TDL
	return true
}

proc update_PARAM_VALUE.BIT_UNCALIBRATED { PARAM_VALUE.BIT_UNCALIBRATED } {
	# Procedure called to update BIT_UNCALIBRATED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIT_UNCALIBRATED { PARAM_VALUE.BIT_UNCALIBRATED } {
	# Procedure called to validate BIT_UNCALIBRATED
	return true
}

proc update_PARAM_VALUE.BUFFERING_STAGE { PARAM_VALUE.BUFFERING_STAGE } {
	# Procedure called to update BUFFERING_STAGE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUFFERING_STAGE { PARAM_VALUE.BUFFERING_STAGE } {
	# Procedure called to validate BUFFERING_STAGE
	return true
}

proc update_PARAM_VALUE.CEC_VS_CTD_COUNTER { PARAM_VALUE.CEC_VS_CTD_COUNTER } {
	# Procedure called to update CEC_VS_CTD_COUNTER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CEC_VS_CTD_COUNTER { PARAM_VALUE.CEC_VS_CTD_COUNTER } {
	# Procedure called to validate CEC_VS_CTD_COUNTER
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DEBUG_MODE { PARAM_VALUE.DEBUG_MODE } {
	# Procedure called to update DEBUG_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEBUG_MODE { PARAM_VALUE.DEBUG_MODE } {
	# Procedure called to validate DEBUG_MODE
	return true
}

proc update_PARAM_VALUE.DEBUG_MODE_CC { PARAM_VALUE.DEBUG_MODE_CC } {
	# Procedure called to update DEBUG_MODE_CC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEBUG_MODE_CC { PARAM_VALUE.DEBUG_MODE_CC } {
	# Procedure called to validate DEBUG_MODE_CC
	return true
}

proc update_PARAM_VALUE.DEBUG_MODE_CT { PARAM_VALUE.DEBUG_MODE_CT } {
	# Procedure called to update DEBUG_MODE_CT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEBUG_MODE_CT { PARAM_VALUE.DEBUG_MODE_CT } {
	# Procedure called to validate DEBUG_MODE_CT
	return true
}

proc update_PARAM_VALUE.DEBUG_PORT_DECODER { PARAM_VALUE.DEBUG_PORT_DECODER } {
	# Procedure called to update DEBUG_PORT_DECODER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEBUG_PORT_DECODER { PARAM_VALUE.DEBUG_PORT_DECODER } {
	# Procedure called to validate DEBUG_PORT_DECODER
	return true
}

proc update_PARAM_VALUE.EDGE_CHECK { PARAM_VALUE.EDGE_CHECK } {
	# Procedure called to update EDGE_CHECK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EDGE_CHECK { PARAM_VALUE.EDGE_CHECK } {
	# Procedure called to validate EDGE_CHECK
	return true
}

proc update_PARAM_VALUE.FIFO_MEMORY_TYPE { PARAM_VALUE.FIFO_MEMORY_TYPE } {
	# Procedure called to update FIFO_MEMORY_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_MEMORY_TYPE { PARAM_VALUE.FIFO_MEMORY_TYPE } {
	# Procedure called to validate FIFO_MEMORY_TYPE
	return true
}

proc update_PARAM_VALUE.FIFO_WRITE_DEPTH { PARAM_VALUE.FIFO_WRITE_DEPTH } {
	# Procedure called to update FIFO_WRITE_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_WRITE_DEPTH { PARAM_VALUE.FIFO_WRITE_DEPTH } {
	# Procedure called to validate FIFO_WRITE_DEPTH
	return true
}

proc update_PARAM_VALUE.FREE_RUNNING { PARAM_VALUE.FREE_RUNNING } {
	# Procedure called to update FREE_RUNNING when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREE_RUNNING { PARAM_VALUE.FREE_RUNNING } {
	# Procedure called to validate FREE_RUNNING
	return true
}

proc update_PARAM_VALUE.INTEGRATION_METHOD { PARAM_VALUE.INTEGRATION_METHOD } {
	# Procedure called to update INTEGRATION_METHOD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INTEGRATION_METHOD { PARAM_VALUE.INTEGRATION_METHOD } {
	# Procedure called to validate INTEGRATION_METHOD
	return true
}

proc update_PARAM_VALUE.INTERNAL_OVERFLOW_CNT { PARAM_VALUE.INTERNAL_OVERFLOW_CNT } {
	# Procedure called to update INTERNAL_OVERFLOW_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INTERNAL_OVERFLOW_CNT { PARAM_VALUE.INTERNAL_OVERFLOW_CNT } {
	# Procedure called to validate INTERNAL_OVERFLOW_CNT
	return true
}

proc update_PARAM_VALUE.MAX_INPUT_ENGINE_AND_PIPELINE_STAGE1 { PARAM_VALUE.MAX_INPUT_ENGINE_AND_PIPELINE_STAGE1 } {
	# Procedure called to update MAX_INPUT_ENGINE_AND_PIPELINE_STAGE1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_INPUT_ENGINE_AND_PIPELINE_STAGE1 { PARAM_VALUE.MAX_INPUT_ENGINE_AND_PIPELINE_STAGE1 } {
	# Procedure called to validate MAX_INPUT_ENGINE_AND_PIPELINE_STAGE1
	return true
}

proc update_PARAM_VALUE.MAX_INPUT_ENGINE_AND_PIPELINE_STAGE2 { PARAM_VALUE.MAX_INPUT_ENGINE_AND_PIPELINE_STAGE2 } {
	# Procedure called to update MAX_INPUT_ENGINE_AND_PIPELINE_STAGE2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_INPUT_ENGINE_AND_PIPELINE_STAGE2 { PARAM_VALUE.MAX_INPUT_ENGINE_AND_PIPELINE_STAGE2 } {
	# Procedure called to validate MAX_INPUT_ENGINE_AND_PIPELINE_STAGE2
	return true
}

proc update_PARAM_VALUE.MAX_INPUT_ENGINE_AND_PIPELINE_STAGE3 { PARAM_VALUE.MAX_INPUT_ENGINE_AND_PIPELINE_STAGE3 } {
	# Procedure called to update MAX_INPUT_ENGINE_AND_PIPELINE_STAGE3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_INPUT_ENGINE_AND_PIPELINE_STAGE3 { PARAM_VALUE.MAX_INPUT_ENGINE_AND_PIPELINE_STAGE3 } {
	# Procedure called to validate MAX_INPUT_ENGINE_AND_PIPELINE_STAGE3
	return true
}

proc update_PARAM_VALUE.MAX_NUM_BIT_EQ_PIPELINE_STAGE0 { PARAM_VALUE.MAX_NUM_BIT_EQ_PIPELINE_STAGE0 } {
	# Procedure called to update MAX_NUM_BIT_EQ_PIPELINE_STAGE0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_NUM_BIT_EQ_PIPELINE_STAGE0 { PARAM_VALUE.MAX_NUM_BIT_EQ_PIPELINE_STAGE0 } {
	# Procedure called to validate MAX_NUM_BIT_EQ_PIPELINE_STAGE0
	return true
}

proc update_PARAM_VALUE.MD_VS_TD { PARAM_VALUE.MD_VS_TD } {
	# Procedure called to update MD_VS_TD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MD_VS_TD { PARAM_VALUE.MD_VS_TD } {
	# Procedure called to validate MD_VS_TD
	return true
}

proc update_PARAM_VALUE.MODE_SEL { PARAM_VALUE.MODE_SEL } {
	# Procedure called to update MODE_SEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MODE_SEL { PARAM_VALUE.MODE_SEL } {
	# Procedure called to validate MODE_SEL
	return true
}

proc update_PARAM_VALUE.NUMBER_OF_TDL { PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to update NUMBER_OF_TDL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUMBER_OF_TDL { PARAM_VALUE.NUMBER_OF_TDL } {
	# Procedure called to validate NUMBER_OF_TDL
	return true
}

proc update_PARAM_VALUE.NUM_CH { PARAM_VALUE.NUM_CH } {
	# Procedure called to update NUM_CH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_CH { PARAM_VALUE.NUM_CH } {
	# Procedure called to validate NUM_CH
	return true
}

proc update_PARAM_VALUE.NUM_NODE { PARAM_VALUE.NUM_NODE } {
	# Procedure called to update NUM_NODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_NODE { PARAM_VALUE.NUM_NODE } {
	# Procedure called to validate NUM_NODE
	return true
}

proc update_PARAM_VALUE.NUM_TAP_PRE_TDL { PARAM_VALUE.NUM_TAP_PRE_TDL } {
	# Procedure called to update NUM_TAP_PRE_TDL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_TAP_PRE_TDL { PARAM_VALUE.NUM_TAP_PRE_TDL } {
	# Procedure called to validate NUM_TAP_PRE_TDL
	return true
}

proc update_PARAM_VALUE.NUM_TAP_TDL { PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to update NUM_TAP_TDL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_TAP_TDL { PARAM_VALUE.NUM_TAP_TDL } {
	# Procedure called to validate NUM_TAP_TDL
	return true
}

proc update_PARAM_VALUE.PASS_THROUGH { PARAM_VALUE.PASS_THROUGH } {
	# Procedure called to update PASS_THROUGH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PASS_THROUGH { PARAM_VALUE.PASS_THROUGH } {
	# Procedure called to validate PASS_THROUGH
	return true
}

proc update_PARAM_VALUE.RELATED_CLOCKS { PARAM_VALUE.RELATED_CLOCKS } {
	# Procedure called to update RELATED_CLOCKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RELATED_CLOCKS { PARAM_VALUE.RELATED_CLOCKS } {
	# Procedure called to validate RELATED_CLOCKS
	return true
}

proc update_PARAM_VALUE.SAVE_BIT { PARAM_VALUE.SAVE_BIT } {
	# Procedure called to update SAVE_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAVE_BIT { PARAM_VALUE.SAVE_BIT } {
	# Procedure called to validate SAVE_BIT
	return true
}

proc update_PARAM_VALUE.SIM_VS_IMP { PARAM_VALUE.SIM_VS_IMP } {
	# Procedure called to update SIM_VS_IMP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SIM_VS_IMP { PARAM_VALUE.SIM_VS_IMP } {
	# Procedure called to validate SIM_VS_IMP
	return true
}

proc update_PARAM_VALUE.TYPE_DECODER { PARAM_VALUE.TYPE_DECODER } {
	# Procedure called to update TYPE_DECODER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE_DECODER { PARAM_VALUE.TYPE_DECODER } {
	# Procedure called to validate TYPE_DECODER
	return true
}

proc update_PARAM_VALUE.VALID_NUMBER_OF_TDL_INIT { PARAM_VALUE.VALID_NUMBER_OF_TDL_INIT } {
	# Procedure called to update VALID_NUMBER_OF_TDL_INIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VALID_NUMBER_OF_TDL_INIT { PARAM_VALUE.VALID_NUMBER_OF_TDL_INIT } {
	# Procedure called to validate VALID_NUMBER_OF_TDL_INIT
	return true
}

proc update_PARAM_VALUE.VALID_POSITION_TAP_INIT { PARAM_VALUE.VALID_POSITION_TAP_INIT } {
	# Procedure called to update VALID_POSITION_TAP_INIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VALID_POSITION_TAP_INIT { PARAM_VALUE.VALID_POSITION_TAP_INIT } {
	# Procedure called to validate VALID_POSITION_TAP_INIT
	return true
}

proc update_PARAM_VALUE.X7S_VS_XUS { PARAM_VALUE.X7S_VS_XUS } {
	# Procedure called to update X7S_VS_XUS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.X7S_VS_XUS { PARAM_VALUE.X7S_VS_XUS } {
	# Procedure called to validate X7S_VS_XUS
	return true
}

proc update_PARAM_VALUE.XUS_VS_X7S { PARAM_VALUE.XUS_VS_X7S } {
	# Procedure called to update XUS_VS_X7S when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.XUS_VS_X7S { PARAM_VALUE.XUS_VS_X7S } {
	# Procedure called to validate XUS_VS_X7S
	return true
}


