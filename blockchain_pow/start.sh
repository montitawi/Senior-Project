#!/usr/bin/env bash
rm blockchain*.db
rm wallet_*.dat
rm blockchain_go
go build
re="Your new address: ([\w]+)"

# Node ID 3000
export NODE_ID=3000
OUTPUT1=$(./blockchain_go createwallet)
OUTPUT2=$(./blockchain_go createwallet)
echo "${OUTPUT1}"
echo "${OUTPUT2}"

addr1=$(echo "${OUTPUT1}" | egrep -o "\w+$")
addr2=$(echo "${OUTPUT2}" | egrep -o "\w+$")

# Create Blockchain
bc=$(go run *.go createblockchain -address ${addr1})
echo "${bc}"

# Node ID 3001 - Create wallet
export NODE_ID=3001
node3001addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3001addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3001addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3001addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3001addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3001"
./blockchain_go listaddresses

# NODE ID 3002 - Create wallet
export NODE_ID=3002
node3002addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3002addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3002addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3002addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3002addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3002"
./blockchain_go listaddresses
# NODE ID 3003 - Create wallet
export NODE_ID=3003
node3003addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3003addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3003addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3003addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3003addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3003"
./blockchain_go listaddresses
# NODE ID 3004 - Create wallet
export NODE_ID=3004
node3004addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3004addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3004addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3004addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3004addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3004"
./blockchain_go listaddresses


echo "--------------------------------------------------------------------"

cp blockchain_3000.db blockchain_genesis.db


# Node ID 3000
export NODE_ID=3000
echo "${addr1}"
echo "${node3001addr1}"

./blockchain_go send -from ${addr1} -to ${node3001addr1} -amount 251 -mine

echo "--------------------------------------------------------------------"

cp blockchain_genesis.db blockchain_3001.db
cp blockchain_genesis.db blockchain_3002.db
cp blockchain_genesis.db blockchain_3003.db
cp blockchain_genesis.db blockchain_3004.db

export NODE_ID=3002
node3002Miner=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "Miner Addr : ${node3002Miner}"

