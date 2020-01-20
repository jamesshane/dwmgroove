#!/bin/sh

awk 'BEGIN {
	while("df -hP " | getline) {
		if ( $NF == "/" ) {
			printf "Disk: %d/%dGB (%s) | ", $3,$2,$5
		}
	}

	while( getline  < "/proc/loadavg" ) {
		printf "CPU: %.2f | ", $(NF-2)
	}
	
	while( "free -m"| getline) {
		if( $0 ~ /Mem:/) {
			printf "Mem: %s/%sMB (%.2f%s)", $3,$2,($3*100/$2),"%"
		}
	}
}'

