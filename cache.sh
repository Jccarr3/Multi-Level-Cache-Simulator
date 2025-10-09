#! /bin/bash

echo "testing cache script"


#compile code

g++ -o sim sim.cc

#run code

./sim 16 1024 1 0 0 1 4 gcc_trace.txt

#finished
echo "finished"