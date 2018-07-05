@echo off
set /p intFace="Enter Network Interface e.g. Ethernet: "
echo Select Which class you want to scan.
echo 1. Class A
echo 2. Class B
echo 3. Class C
echo 4. All Classes
set /p classVar="Choose a number between 1 and 4 and press enter: "

echo %classVar%
if %classVar%==1 goto scan_ClassA
if %classVar%==2 goto scan_ClassB
if %classVar%==3 goto scan_ClassC
if %classVar%==4 goto scan_ClassAll

:scan_ClassAll
set scanAll=1
goto scan_ClassA
EXIT /B0
:scan_ClassAllb
set scanAll=1
goto scan_ClassB
EXIT /B0
:scan_ClassAllc
set scanAll=1
goto scan_ClassC
EXIT /B0

:scan_ClassA
echo Class A Scan
set lenA=10
set subnet=255.255.255.0
set pcipA=10.0.0.101
set obj[0] = 10.0.0.1
set obj[1] = 10.0.0.138
set obj[2] = 10.0.0.250
set obj[3] = 10.0.0.252
set obj[4] = 10.0.0.254
set obj[5] = 10.1.1.1
set obj[6] = 10.1.1.138
set obj[7] = 10.1.1.250
set obj[8] = 10.1.1.252
set obj[9] = 10.1.1.254


set i=0
set p=0
:loopA
if %i% equ %lenA% goto :endA
echo %p%
if %p% equ 5 set pcipA=10.1.1.101
for /f "usebackq delims== tokens=2" %%f in (`set obj[%i%]`) do (
	echo netsh int ip set address "%intFace%" static %pcipA% %subnet% %%f
	echo %scanAll%
	netsh int ip set address "%intFace%" static %pcipA% %subnet% %%f
	ping -w 1 %%f
)
set /a i=%i%+1
set /a p=%p%+1
goto loopA
:endA
if %scanAll% ==1 goto scan_ClassAllb else goto eof
EXIT /B 0

:scan_ClassB
echo Class B Scan
set lenB=10
set subnet=255.255.255.0
set pcipB=172.16.0.101
set obj[0] = 172.16.0.1
set obj[1] = 172.16.0.138
set obj[2] = 172.16.0.250
set obj[3] = 172.16.0.252
set obj[4] = 172.16.0.254
set obj[5] = 172.16.1.1
set obj[6] = 172.16.1.138
set obj[7] = 172.16.1.250
set obj[8] = 172.16.1.252
set obj[9] = 172.16.1.254


set b=0
set c=0
:loopB
if %b% equ %lenB% goto :endb
echo %c%
if %c% equ 5 set pcipB=172.16.1.101
for /f "usebackq delims== tokens=2" %%g in (`set obj[%b%]`) do (
	echo netsh int ip set address "%intFace%" static %pcipB% %subnet% %%g
	netsh int ip set address "%intFace%" static %pcipB% %subnet% %%g
	ping -w 1 %%g
)
set /a b=%b%+1
set /a c=%c%+1
goto loopB
:endb
if %scanAll% ==1 goto scan_ClassAllc else goto eof
EXIT /B 0

:scan_ClassC
echo Class C Scan
set lenC=20
set subnet=255.255.255.0
set pcipC=192.168.0.101
set ocj[0] = 192.168.0.1
set ocj[1] = 192.168.0.138
set ocj[2] = 192.168.0.250
set ocj[3] = 192.168.0.252
set ocj[4] = 192.168.0.254
set ocj[5] = 192.168.1.1
set ocj[6] = 192.168.1.138
set ocj[7] = 192.168.1.250
set ocj[8] = 192.168.1.252
set ocj[9] = 192.168.1.254
set ocj[10] = 192.168.2.1
set ocj[11] = 192.168.2.138
set ocj[12] = 192.168.2.250
set ocj[13] = 192.168.2.252
set ocj[14] = 192.168.2.254
set ocj[15] = 192.168.10.1
set ocj[16] = 192.168.10.138
set ocj[17] = 192.168.10.250
set ocj[18] = 192.168.10.252
set ocj[19] = 192.168.10.254


set d=0
set e=0
:loopC
if %d% equ %lenC% goto :eof
echo %e%
if %e% equ 5 set pcipC=192.168.1.101
if %e% equ 10 set pcipC=192.168.2.101
if %e% equ 15 set pcipC=192.168.10.101
for /f "usebackq delims== tokens=2" %%h in (`set ocj[%d%]`) do (
	echo netsh int ip set address "%intFace%" static %pcipC% %subnet% %%h
	netsh int ip set address "%intFace%" static %pcipC% %subnet% %%h
	ping -w 1 %%h
)
set /a d=%d%+1
set /a e=%e%+1
goto loopC
EXIT /B 0
