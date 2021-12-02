#!/bin/sh

echo $TA_EXECUTE

if [ -n "$TA_TIMEOUT" ]
then
  echo $TA_TIMEOUT
  echo "timeout -k $TA_TIMEOUT $TA_TIMEOUT ta execute $TA_EXECUTE" > ta_exec.sh
else
  echo "ta execute $TA_EXECUTE" > ta_exec.sh
fi

sh ta_exec.sh