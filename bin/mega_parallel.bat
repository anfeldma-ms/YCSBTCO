set /A T=100000000
set /A N=20
set /A S=%T%/%N%

echo %N%
echo %S%

setlocal enableDelayedExpansion
FOR /l %%A IN (1,1,%N%) DO (
	set /A M=S*%%A-S
	echo !M!
	start ycsb load mongodb -s -P "C:\Users\anfeldma\codeHome\YCSB\workloads\workloadr" -p insertstart=!M! -p insertcount=%S% -p mongodb.url="mongodb+srv://anfeldma:O%%21curmt0@azure44noshard1oregonus.fr0to.mongodb.net/ycsb?authSource^^=admin^^&retryWrites^^=true^^&w^^=1" -p operationcount=%T% -p recordcount=%T% -threads 100
	)
	