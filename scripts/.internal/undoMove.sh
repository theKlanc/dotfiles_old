#!/bin/sh
op1=`tail -n 1 /tmp/moveDest.txt`
op2=`tail -n 1 /tmp/moveOrigin.txt`
mv "$op1" "$op2" && (sed -i '$ d' /tmp/moveDest.txt && sed -i '$ d' /tmp/moveOrigin.txt)
