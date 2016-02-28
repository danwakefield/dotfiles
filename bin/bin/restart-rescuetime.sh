RESCUETIME_RUNNING=$(ps aux | grep rescuetime | grep -v egrep | wc -l)

if [ $RESCUETIME_RUNNING -eq 0 ]; then
    rescuetime &
fi