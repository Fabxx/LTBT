#!/bin/bash

status=$(cat "/sys/devices/system/cpu/intel_pstate/no_turbo")

if [[ $status -eq 0 ]] then echo "1" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo

echo "turbo boost disabled"

else echo "0" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo

echo "turbo boost enabled"

fi
