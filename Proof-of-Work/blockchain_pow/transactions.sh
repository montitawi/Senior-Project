#!/usr/bin/env bash

. ./var_file

# Node ID 3001 - Create transactions
export NODE_ID=3001
rm checkhash.txt
./blockchain_pow send -from ${node3001addr0} -to ${node3001addr1} -amount 5
./blockchain_pow send -from ${node3001addr0} -to ${node3001addr2} -amount 5
while [ ! -f checkhash.txt ] ;
do
      echo wait for a new block
      sleep 2
done
echo "block is ready, proceed next step"
rm checkhash.txt
./blockchain_pow send -from ${node3001addr0} -to ${node3001addr3} -amount 5
./blockchain_pow send -from ${node3001addr0} -to ${node3001addr4} -amount 5

while [ ! -f checkhash.txt ] ;
do
      echo wait for a new block
      sleep 2
done
echo "block is ready, proceed next step"
rm checkhash.txt
./blockchain_pow send -from ${node3001addr0} -to ${node3001addr5} -amount 5
./blockchain_pow send -from ${node3001addr0} -to ${node3002addr1} -amount 5

while [ ! -f checkhash.txt ] ;
do
      echo wait for a new block
      sleep 2
done
echo "block is ready, proceed next step"
rm checkhash.txt
./blockchain_pow send -from ${node3001addr0} -to ${node3002addr2} -amount 5
./blockchain_pow send -from ${node3001addr0} -to ${node3002addr3} -amount 5

while [ ! -f checkhash.txt ] ;
do
      echo wait for a new block
      sleep 2
done
echo "block is ready, proceed next step"
rm checkhash.txt
./blockchain_pow send -from ${node3001addr0} -to ${node3002addr4} -amount 5
./blockchain_pow send -from ${node3001addr0} -to ${node3002addr5} -amount 5

while [ ! -f checkhash.txt ] ;
do
      echo wait for a new block
      sleep 2
done
echo "block is ready, proceed next step"
rm checkhash.txt
./blockchain_pow send -from ${node3001addr0} -to ${node3003addr1} -amount 5
./blockchain_pow send -from ${node3001addr0} -to ${node3003addr2} -amount 5

while [ ! -f checkhash.txt ] ;
do
      echo wait for a new block
      sleep 2
done
echo "block is ready, proceed next step"
rm checkhash.txt
./blockchain_pow send -from ${node3001addr0} -to ${node3003addr3} -amount 5
./blockchain_pow send -from ${node3001addr0} -to ${node3003addr4} -amount 5

while [ ! -f checkhash.txt ] ;
do
      echo wait for a new block
      sleep 2
done
echo "block is ready, proceed next step"
rm checkhash.txt
./blockchain_pow send -from ${node3001addr0} -to ${node3003addr5} -amount 5
./blockchain_pow send -from ${node3001addr0} -to ${node3004addr1} -amount 5

while [ ! -f checkhash.txt ] ;
do
      echo wait for a new block
      sleep 2
done
echo "block is ready, proceed next step"
rm checkhash.txt
./blockchain_pow send -from ${node3001addr0} -to ${node3004addr2} -amount 5
./blockchain_pow send -from ${node3001addr0} -to ${node3004addr3} -amount 5

while [ ! -f checkhash.txt ] ;
do
      echo wait for a new block
      sleep 2
done
echo "block is ready, proceed next step"
rm checkhash.txt
./blockchain_pow send -from ${node3001addr0} -to ${node3004addr4} -amount 5
./blockchain_pow send -from ${node3001addr0} -to ${node3004addr5} -amount 5
