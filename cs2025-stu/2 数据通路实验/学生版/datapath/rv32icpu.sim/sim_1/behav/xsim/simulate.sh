#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Thu Feb 20 16:33:04 CST 2025
# SW Build 3671981 on Fri Oct 14 04:59:54 MDT 2022
#
# IP Build 3669848 on Fri Oct 14 08:30:02 MDT 2022
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim tb_reg_file_behav -key {Behavioral:sim_1:Functional:tb_reg_file} -tclbatch tb_reg_file.tcl -log simulate.log"
xsim tb_reg_file_behav -key {Behavioral:sim_1:Functional:tb_reg_file} -tclbatch tb_reg_file.tcl -log simulate.log

