echo "Enter Array: "
read -a os
echo "${os[0]}"
echo "${#os[@]}" #length
unset os[1]
echo "${#os[@]}" 
