echo "[4] CAN SETTING: cs	[4-1] CAN rx TEST: rx	[4-2] CAN tx TEST: tx"
echo "[CAN Test]"

echo -n "demo :"
read su

if [ "$su" = "cs" ]; then
    echo "can setting"

    sudo modprobe can
    sudo modprobe can_raw
    sudo modprobe mttcan
    sudo ip link set can0 type can bitrate 500000 dbitrate 2000000 berr-reporting on fd on
    sudo ip link set up can0

    ifconfig can0

elif [ "$su" = "rx" ]; then
    echo "can rx test"
    candump can0
elif [ "$su" = "tx" ]; then
    echo "can tx test"
    cansend can0 123#abcdabcd 
elif [ "$su" = "ins" ]; then
    echo "canutil install"
    sudo apt-get install can-utils

else
    echo "invalid argument."

fi
