#!/bin/bash

for h in `cat $1` ;
do
    if ping -c 2 -q -W 1 $h &> /dev/null;
    then
        echo $h "success"
    else
       echo  $h "failed"
    fi
done
