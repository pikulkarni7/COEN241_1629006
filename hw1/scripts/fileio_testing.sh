#! /usr/bin/bash


sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw prepare

sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario1.txt
sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario1.txt
sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario1.txt
sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario1.txt
sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario1.txt

sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw cleanup


sysbench --num-threads=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw prepare

sysbench --num-threads=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario2.txt
sysbench --num-threads=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario2.txt
sysbench --num-threads=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario2.txt
sysbench --num-threads=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario2.txt
sysbench --num-threads=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario2.txt

sysbench --num-threads=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw cleanup

sysbench --num-threads=8 –file-num=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw prepare

sysbench --num-threads=8 –file-num=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario3.txt
sysbench --num-threads=8 –file-num=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario3.txt
sysbench --num-threads=8 –file-num=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario3.txt
sysbench --num-threads=8 –file-num=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario3.txt
sysbench --num-threads=8 –file-num=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw run >> fileio_scenario3.txt

sysbench --num-threads=8 --test=fileio --file-total-size=1G --file-test-mode=rndrw cleanup


echo "FILEIO TESTING COMPLETED"


