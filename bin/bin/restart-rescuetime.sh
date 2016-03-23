RESCUETIME_RUNNING=$(ps aux | grep rescuetime | grep -v egrep | wc -l)

if [ "$RESCUETIME_RUNNING" -eq "0" ]; then
    notify-send "Rescuetime" "Restart Rescuetime for time tracking"
fi
