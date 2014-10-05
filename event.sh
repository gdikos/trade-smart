#!/bin/bash
for i in 1 5 10 15 20 
do
    for holding_period in 1 5 10 20 50 100 250
    do
    echo "lookback period is" $i
    echo "holding period is" $holding_period
    sudo python bollinger_events.py $i $holding_period
    sudo python market_sim.py
    sudo python analyzer.py
    sudo python analyzer.py >> test.txt
    done
done 
