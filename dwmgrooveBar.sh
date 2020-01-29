#!/bin/bash

while true;
    do
        m=$(free -m | awk 'NR==2{printf "Mem: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }')
        mt=$(free -m | awk 'NR==2{printf "Mem: %s/%sMB (%.2f%%)\n", $2-($4),$2,($2-($4))*100/$2 }')
        mtt=$(free -m | awk 'NR==2{printf "Mem: %s/%sMB (%.2f%%)\n", $2-($7),$2,(($2-$7)/$2)*100 }')
        d=$(df -h | awk '$NF=="/"{printf "Disk: %d/%dGB (%s)\n", $3,$2,$5}')
        c=$(top -bn1 | grep load | awk '{printf "CPU: %.2f\n", $(NF-2)}')
        ct=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{printf "CPU: (%.2f%%)\n", (100 - $1)}')
        dt=$(date '+%a %b %d, %H:%M:%S')
        #cat /proc/meminfo | grep MemFree | awk '{ print $2 }'
        #echo "$c | $m | $d"
        xsetroot -name "$dt -- $ct | $mtt | $d"
        sleep 0.5;
    done;