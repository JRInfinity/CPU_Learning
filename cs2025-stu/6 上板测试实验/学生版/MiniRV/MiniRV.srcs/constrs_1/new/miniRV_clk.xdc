# 语法格式为create_clock -name (clock name) -period (time) [get_ports (port name)]
# 10代表100MHz，4代表250HMz
create_clock -name cpu_clk -period 20 [get_ports cpu_clk]

