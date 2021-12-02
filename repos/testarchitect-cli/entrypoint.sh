#!/bin/sh

echo "execute: $TA_EXECUTE"
echo "ta execute $TA_EXECUTE || kill -9 8" > ta_exec.sh

if [ -n "$TA_TIMEOUT" ]; then
  echo "trigger and forget!"
  echo "timeout: $TA_TIMEOUT"
  sh ta_exec.sh&
  sleep $TA_TIMEOUT
else
  echo "trigger and follow..."
  sh ta_exec.sh
fi