echo "eth0's address is $(ifconfig eth0 | grep ether | awk '{print $2}')"