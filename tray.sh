#!/bin/sh

for i in {1..10}
do
    eject
    sleep 1
    eject -t
    sleep 1
done

