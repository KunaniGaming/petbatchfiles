@echo off
cd C:\Users\USER-NAME-HERE\AppData\Local\chia-blockchain\app-1.1.6\resources\app.asar.unpacked\daemon\
chia plots create -x -k 32 -b 3390 -r 2 -n 1 -t t:\ChiaTemp -d t:\ChiaTemp -f FARMER-KEY-HERE -p POOL-KEY-HERE
exit
