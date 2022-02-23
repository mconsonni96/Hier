# Function ID of the Belt Bus 0 = OVERLOW Coarse, 1 = MEASURE, If 0 no FID is consider
# BIT_FID				:	NATURAL	:=	1;

# ------------------ BIT_FID -------------------
set MIN_BIT_FID 0
set MAX_BIT_FID 4
set DEFAULT_BIT_FID 2

set enablement {True}
set editable {}

set dependency {}

set tooltip "Bit reserver to the FID of the Belt Bus used to identify properly the timestamps"
set display_name "Bit FID"

create_param_long_range "BIT_FID" $MIN_BIT_FID $MAX_BIT_FID $DEFAULT_BIT_FID $enablement $editable $dependency $tooltip $display_name
# ----------------------------------------------


# Bit of Coarse Counter, If 0 not Coarse counter is consider only Fine
# BIT_COARSE_CEC		:	NATURAL		RANGE	0	TO	32	:=	8;

# ---------------- BIT_COARSE -----------------
set MIN_BIT_COARSE_CEC 1
set MAX_BIT_COARSE_CEC 32
set DEFAULT_BIT_COARSE_CEC 8

set enablement {True}
set editable {}

set dependency {}

set tooltip "Bit Coarse Counter input dimension"
set display_name "Bit Coarse CEC"

create_param_long_range "BIT_COARSE_CEC" $MIN_BIT_COARSE_CEC $MAX_BIT_COARSE_CEC $DEFAULT_BIT_COARSE_CEC $enablement $editable $dependency $tooltip $display_name
# ----------------------------------------------


# Bit of Coarse Counter, If 0 not Coarse counter is consider only Fine
# BIT_COARSE		:	NATURAL		RANGE	0	TO	128	:=	8;

# ---------------- BIT_COARSE -----------------
set MIN_BIT_COARSE 1
set MAX_BIT_COARSE 128
set DEFAULT_BIT_COARSE 8

set enablement {True}
set editable {}

set dependency {}

set tooltip "Bit Coarse Counter output dimension"
set display_name "Bit Coarse"

create_param_long_range "BIT_COARSE" $MIN_BIT_COARSE $MAX_BIT_COARSE $DEFAULT_BIT_COARSE $enablement $editable $dependency $tooltip $display_name
# ----------------------------------------------



# Number of Bits of the Calibrated_TDL
# BIT_RESOLUTION	:	POSITIVE	RANGE	1	TO	32	:=	16

# --------------- BIT_RESOLUTION ---------------
set MIN_BIT_RESOLUTION 1
set MAX_BIT_RESOLUTION 32
set DEFAULT_BIT_RESOLUTION 16

set enablement {True}
set editable {}

set dependency {}

set tooltip "Bit used for the fine part of the timestamp"
set display_name "Bit Resolution"

create_param_long_range "BIT_RESOLUTION" $MIN_BIT_RESOLUTION $MAX_BIT_RESOLUTION $DEFAULT_BIT_RESOLUTION $enablement $editable $dependency $tooltip $display_name
# ----------------------------------------------


