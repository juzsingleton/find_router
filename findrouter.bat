@echo off
set /p intFace="Enter Network Interface e.g. Ethernet: "
netsh int ip set address "%intFace%" static 192.168.0.101 255.255.255.0 192.168.0.1
ping 192.168.0.1
netsh int ip set address "%intFace%" static 192.168.0.101 255.255.255.0 192.168.0.250
ping 192.168.0.250
netsh int ip set address "%intFace%" static 192.168.0.101 255.255.255.0 192.168.0.254
ping 192.168.0.254
netsh int ip set address "%intFace%" static 192.168.0.101 255.255.255.0 192.168.0.252
ping 192.168.0.252
netsh int ip set address "%intFace%" static 192.168.1.101 255.255.255.0 192.168.1.1
ping 192.168.1.1
netsh int ip set address "%intFace%" static 192.168.1.101 255.255.255.0 192.168.1.250
ping 192.168.1.250
netsh int ip set address "%intFace%" static 192.168.1.101 255.255.255.0 192.168.1.254
ping 192.168.1.254
netsh int ip set address "%intFace%" static 192.168.1.101 255.255.255.0 192.168.1.252
ping 192.168.1.252
netsh int ip set address "%intFace%" static 192.168.2.101 255.255.255.0 192.168.2.1
ping 192.168.2.1
netsh int ip set address "%intFace%" static 192.168.2.101 255.255.255.0 192.168.2.250
ping 192.168.2.250
netsh int ip set address "%intFace%" static 192.168.2.101 255.255.255.0 192.168.2.254
ping 192.168.2.254
netsh int ip set address "%intFace%" static 192.168.2.101 255.255.255.0 192.168.2.252
ping 192.168.2.252
netsh int ip set address "%intFace%" static 10.0.0.101 255.255.255.0 10.0.0.1
ping 10.0.0.1
netsh int ip set address "%intFace%" static 10.0.0.101 255.255.255.0 10.0.0.138
ping 10.0.0.138
netsh int ip set address "%intFace%" static 10.0.0.101 255.255.255.0 10.0.0.250
ping 10.0.0.250
netsh int ip set address "%intFace%" static 10.0.0.101 255.255.255.0 10.0.0.252
ping 10.0.0.252
netsh int ip set address "%intFace%" static 10.0.0.101 255.255.255.0 10.0.0.254
ping 10.0.0.254
netsh int ip set address "%intFace%" static 10.1.1.101 255.255.255.0 10.1.1.1
ping 10.1.1.1
netsh int ip set address "%intFace%" static 10.1.1.101 255.255.255.0 10.1.1.138
ping 10.1.1.138
netsh int ip set address "%intFace%" static 10.1.1.101 255.255.255.0 10.1.1.250
ping 10.1.1.250
netsh int ip set address "%intFace%" static 10.1.1.101 255.255.255.0 10.1.1.252
ping 10.1.1.252
netsh int ip set address "%intFace%" static 10.1.1.101 255.255.255.0 10.1.1.254
ping 10.1.1.254

