#! /bin/bash

echo "testing cache script"


#compile code

g++ -o sim sim.cc

#run code
echo "running direct mapped tests"

./sim 32 1024 1 0 0 0 0 gcc_trace.txt
./sim 32 2048 1 0 0 0 0 gcc_trace.txt
./sim 32 4096 1 0 0 0 0 gcc_trace.txt
./sim 32 8192 1 0 0 0 0 gcc_trace.txt
./sim 32 16384 1 0 0 0 0 gcc_trace.txt
./sim 32 32768 1 0 0 0 0 gcc_trace.txt
./sim 32 65536 1 0 0 0 0 gcc_trace.txt
./sim 32 131072 1 0 0 0 0 gcc_trace.txt
./sim 32 262144 1 0 0 0 0 gcc_trace.txt
./sim 32 1048576 1 0 0 0 0 gcc_trace.txt

echo "running 2-way set associative tests"

./sim 32 1024 2 0 0 0 0 gcc_trace.txt
./sim 32 2048 2 0 0 0 0 gcc_trace.txt
./sim 32 4096 2 0 0 0 0 gcc_trace.txt
./sim 32 8192 2 0 0 0 0 gcc_trace.txt
./sim 32 16384 2 0 0 0 0 gcc_trace.txt
./sim 32 32768 2 0 0 0 0 gcc_trace.txt
./sim 32 65536 2 0 0 0 0 gcc_trace.txt
./sim 32 131072 2 0 0 0 0 gcc_trace.txt
./sim 32 262144 2 0 0 0 0 gcc_trace.txt
./sim 32 1048576 2 0 0 0 0 gcc_trace.txt

echo "running 4-way set associative tests"

./sim 32 1024 4 0 0 0 0 gcc_trace.txt
./sim 32 2048 4 0 0 0 0 gcc_trace.txt
./sim 32 4096 4 0 0 0 0 gcc_trace.txt
./sim 32 8192 4 0 0 0 0 gcc_trace.txt
./sim 32 16384 4 0 0 0 0 gcc_trace.txt
./sim 32 32768 4 0 0 0 0 gcc_trace.txt
./sim 32 65536 4 0 0 0 0 gcc_trace.txt
./sim 32 131072 4 0 0 0 0 gcc_trace.txt
./sim 32 262144 4 0 0 0 0 gcc_trace.txt
./sim 32 1048576 4 0 0 0 0 gcc_trace.txt

echo "running 8-way set associative tests"

./sim 32 1024 8 0 0 0 0 gcc_trace.txt
./sim 32 2048 8 0 0 0 0 gcc_trace.txt
./sim 32 4096 8 0 0 0 0 gcc_trace.txt
./sim 32 8192 8 0 0 0 0 gcc_trace.txt
./sim 32 16384 8 0 0 0 0 gcc_trace.txt
./sim 32 32768 8 0 0 0 0 gcc_trace.txt
./sim 32 65536 8 0 0 0 0 gcc_trace.txt
./sim 32 131072 8 0 0 0 0 gcc_trace.txt
./sim 32 262144 8 0 0 0 0 gcc_trace.txt
./sim 32 1048576 8 0 0 0 0 gcc_trace.txt

echo "running fully associative tests"

./sim 32 1024 32 0 0 0 0 gcc_trace.txt
./sim 32 2048 64 0 0 0 0 gcc_trace.txt
./sim 32 4096 128 0 0 0 0 gcc_trace.txt
./sim 32 8192 256 0 0 0 0 gcc_trace.txt
./sim 32 16384 512 0 0 0 0 gcc_trace.txt
./sim 32 32768 1024 0 0 0 0 gcc_trace.txt
./sim 32 65536 2048 0 0 0 0 gcc_trace.txt
./sim 32 131072 4096 0 0 0 0 gcc_trace.txt
./sim 32 262144 8192 0 0 0 0 gcc_trace.txt
./sim 32 1048576 16384 0 0 0 0 gcc_trace.txt




#finished
echo "finished"