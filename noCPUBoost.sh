#!/bin/bash

status=$(cat "/sys/devices/system/cpu/intel_pstate/no_turbo")

if [[ $status -eq 0 ]] then echo "1" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo

else echo "0" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo

fi
