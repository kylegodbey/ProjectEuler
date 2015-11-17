#!/bin/bash
i=2520
COUNTER=0
while [ $COUNTER -eq 0 ]; do
    if [ $(($i % 20)) -eq 0 ] && [ $(($i % 19)) -eq 0 ] && [ $(($i % 18)) -eq 0 ] && [ $(($i % 17)) -eq 0 ] && [ $(($i % 16)) -eq 0 ] && [ $(($i % 15)) -eq 0 ] && [ $(($i % 14)) -eq 0 ] && [ $(($i % 13)) -eq 0 ] && [ $(($i % 12)) -eq 0 ] && [ $(($i % 11)) -eq 0 ]; then
        echo $i
        let COUNTER=COUNTER+1
    fi
    let i=i+20
done

echo Finished