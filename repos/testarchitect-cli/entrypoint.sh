#!/bin/sh
echo $TA_TIMEOUT
echo $TA_EXECUTE
echo "timeout -k $TA_TIMEOUT $TA_TIMEOUT ta execute $TA_EXECUTE" > ta_exec.sh
sh ta_exec.sh