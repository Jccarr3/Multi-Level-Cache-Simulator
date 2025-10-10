#! /bin/bash

echo "testing cache script"


#compile code

g++ -o sim sim.cc

#run code

#code for graphs 1&2
# for i in 1 2 4 8            #for each associativity
# do
#     echo "num ways $i"
#    for j in 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576          #for each cache size
#     do
#         ./sim 32 $j $i 0 0 0 0 gcc_trace.txt
#     done
# done

# ./sim 32 1024 32 0 0 0 0 gcc_trace.txt
# ./sim 32 2048 64 0 0 0 0 gcc_trace.txt
# ./sim 32 4096 128 0 0 0 0 gcc_trace.txt
# ./sim 32 8192 256 0 0 0 0 gcc_trace.txt
# ./sim 32 16384 512 0 0 0 0 gcc_trace.txt
# ./sim 32 32768 1024 0 0 0 0 gcc_trace.txt
# ./sim 32 65536 2048 0 0 0 0 gcc_trace.txt
# ./sim 32 131072 4096 0 0 0 0 gcc_trace.txt
# ./sim 32 262144 8192 0 0 0 0 gcc_trace.txt
# ./sim 32 524288 16384 0 0 0 0 gcc_trace.txt
# ./sim 32 1048576 32768 0 0 0 0 gcc_trace.txt

#code for graphs 1&2^^^^^^^


#code for graphs 3
# for i in 1 2 4 8            #for each associativity
# do
#     echo "num ways $i"
#    for j in 1024 2048 4096 8192          #for each cache size
#     do
#         ./sim 32 $j $i 16384 8 0 0 gcc_trace.txt
#     done
# done
#code for graphs 3^^^^^^^


#code for graph 4
for i in 1024 2048 4096 8192 16384 32768            #for each associativity
do
    echo "cache size $i"
   for j in 16 32 64 128        #for each cache size
    do
        ./sim $j $i 4 0 0 0 0 gcc_trace.txt
    done
done
#code for graph 4^^^^^^^





#finished
echo "finished"