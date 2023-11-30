@echo off

start /D GameServer ./GameServer/Line1.exe
ping 1.1.1.1 -n 1 -w 1000
start /D GameServer ./GameServer/Line2.exe
ping 1.1.1.1 -n 1 -w 1000
start /D GameServer ./GameServer/Line3.exe
ping 1.1.1.1 -n 1 -w 1000
start /D GameServer ./GameServer/Line4.exe
ping 1.1.1.1 -n 1 -w 1000
start /D GameServer ./GameServer/Line5.exe
ping 1.1.1.1 -n 1 -w 1000
start /D GameServer ./GameServer/Line6.exe
ping 1.1.1.1 -n 1 -w 1000
start /D GameServer ./GameServer/Line7.exe
ping 1.1.1.1 -n 1 -w 1000
start /D GameServer ./GameServer/Line8.exe