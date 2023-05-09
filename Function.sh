function datetime {
    echo "Date: " $(date)
    echo "Uptime: " $(uptime -p)
    echo ""
}

function InternetInfo {
    echo "IP Address: "
    ip -o -4 addr show | awk '{split($4,a,"/"); print a[1]}'
    echo ""
}

datetime
InternetInfo

#ip -o -4 addr show: This command uses the ip command to show the IPv4 address information for 
#all network interfaces on the machine, using the -o option to provide a more compact output format 
#and the -4 option to filter the output to only IPv4 addresses. awk '{split($4,a,"/"); print a[1]}': 
#This command uses awk to extract the IPv4 address from the output of the ip command. Specifically, 
#it uses awk to split the fourth field ($4) of each line of the ip output using the forward slash character 
#(/) as the delimiter, and then prints the first field of the resulting array (a[1]), which contains 
#only the IPv4 address without the subnet mask.