echo "Logged Users: ----"
echo "$(w)"
echo "CPU Temperature:  $(sensors | grep 'Core 0' | cut -c16-19)"
echo "Processes: "
ps -ef
