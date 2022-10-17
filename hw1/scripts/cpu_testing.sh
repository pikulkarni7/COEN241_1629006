#! /usr/bin/bash

sysbench --test=cpu --cpu-max-prime=20000 run >> cpu_scenario1.txt
sysbench --test=cpu --cpu-max-prime=20000 run >> cpu_scenario1.txt
sysbench --test=cpu --cpu-max-prime=20000 run >> cpu_scenario1.txt
sysbench --test=cpu --cpu-max-prime=20000 run >> cpu_scenario1.txt 
sysbench --test=cpu --cpu-max-prime=20000 run >> cpu_scenario1.txt

sysbench --test=cpu --cpu-max-prime=50000 run >> cpu_scenario2.txt
sysbench --test=cpu --cpu-max-prime=50000 run >> cpu_scenario2.txt
sysbench --test=cpu --cpu-max-prime=50000 run >> cpu_scenario2.txt
sysbench --test=cpu --cpu-max-prime=50000 run >> cpu_scenario2.txt
sysbench --test=cpu --cpu-max-prime=50000 run >> cpu_scenario2.txt

sysbench --test=cpu --cpu-max-prime=500000 --time=30 run >> cpu_scenario3.txt
sysbench --test=cpu --cpu-max-prime=500000 --time=30 run >> cpu_scenario3.txt
sysbench --test=cpu --cpu-max-prime=500000 --time=30 run >> cpu_scenario3.txt
sysbench --test=cpu --cpu-max-prime=500000 --time=30 run >> cpu_scenario3.txt
sysbench --test=cpu --cpu-max-prime=500000 --time=30 run >> cpu_scenario3.txt


sysbench --test=cpu --cpu-max-prime=500000 --time=30 --threads=8 run >> cpu_scenario4.txt
sysbench --test=cpu --cpu-max-prime=500000 --time=30 --threads=8 run >> cpu_scenario4.txt
sysbench --test=cpu --cpu-max-prime=500000 --time=30 --threads=8 run >> cpu_scenario4.txt
sysbench --test=cpu --cpu-max-prime=500000 --time=30 --threads=8 run >> cpu_scenario4.txt
sysbench --test=cpu --cpu-max-prime=500000 --time=30 --threads=8 run >> cpu_scenario4.txt


echo "FINISHED WITH CPU TESTING"