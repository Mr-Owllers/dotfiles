#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch coolbar
echo "---" | tee -a /tmp/coolbar.log
polybar coolbar | tee -a /tmp/coolbar.log & disown

echo "Bars launched..."
