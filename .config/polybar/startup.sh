#!/bin/sh

killall -q polybar

echo "---" | tee -a /tmp/polybar.log
polybar bar >> /tmp/polybar.log 2>&1 

echo "bar launched."
