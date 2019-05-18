#!/usr/bin/env bash
export NODE_ID=3001
# NODE ID 3001 - Create wallet
time node3001addr1=$(./blockchain_go listaddresses | egrep -o "\w+$")
time node3001addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3001addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3001addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3001addr5=$(./blockchain_go createwallet | egrep -o "\w+$")

# NODE ID 3002 - Create wallet
export NODE_ID=3002
time node3002addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3002addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3002addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3002addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3002addr5=$(./blockchain_go createwallet | egrep -o "\w+$")

# NODE ID 3003 - Create wallet
export NODE_ID=3003
time node3003addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3003addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3003addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3003addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3003addr5=$(./blockchain_go createwallet | egrep -o "\w+$")

# NODE ID 3004 - Create wallet
export NODE_ID=3004
time node3004addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3004addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3004addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3004addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
time node3004addr5=$(./blockchain_go createwallet | egrep -o "\w+$")


# NODE ID 3004 - Create transactions
#export NODE_ID=3001
#time ./blockchain_go send -from ${node3001addr1} -to ${node3001addr2} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3001addr3} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3001addr4} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3001addr5} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3002addr1} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3002addr2} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3002addr3} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3002addr4} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3002addr5} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3003addr1} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3003addr2} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3003addr3} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3003addr4} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3003addr5} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3004addr1} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3004addr2} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3004addr3} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3004addr4} -amount 5 
#time ./blockchain_go send -from ${node3001addr1} -to ${node3004addr5} -amount 5 
