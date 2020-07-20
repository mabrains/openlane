
# Design

# Design

# Design
set ::env(DESIGN_NAME) "point_add"

set ::env(VERILOG_FILES) [glob ./designs/$::env(DESIGN_NAME)/src/*.v]

set ::env(CLOCK_PERIOD) "5.000"
set ::env(CLOCK_PORT) "clk"


set ::env(CLOCK_NET) $::env(CLOCK_PORT)



set filename $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(PDK_VARIANT)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}