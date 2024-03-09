HOST=$1
ping -c 1 $HOST > /dev/null
if [ $? -eq 0 ]; then
    echo "$HOST is online"
else
    echo "$HOST is offline"
fi