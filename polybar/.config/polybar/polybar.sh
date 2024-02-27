#!/bin/bash

killall -q polybar
echo "---" | tee -a /tmp/polybar1/log
polybar 2>&1 | tee -a /tmp/polybar1.log & disown
