#!/usr/bin/env bash
rm blockchain*.db
rm wallet_*.dat
re="Your new address: ([\w]+)"

# Node ID 3000
export NODE_ID=3000
OUTPUT1=$(go run *.go createwallet)
OUTPUT2=$(go run *.go createwallet)
echo "${OUTPUT1}"
echo "${OUTPUT2}"

addr1=$(echo "${OUTPUT1}" | egrep -o "\w+$")
addr2=$(echo "${OUTPUT2}" | egrep -o "\w+$")

# Create Blockchain
bc=$(go run *.go createblockchain -address ${addr1})
echo "${bc}"

# Node ID 3001 - Create wallet
export NODE_ID=3001
node3001addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3001addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3001addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3001addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3001addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3002 - Create wallet
export NODE_ID=3002
node3002addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3002addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3002addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3002addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3002addr5=$(go run *.go createwallet | egrep -o "\w+$")
# echo "Miner Addr: ${node3002addr1}"

# NODE ID 3003 - Create wallet
export NODE_ID=3003
node3003addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3003addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3003addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3003addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3003addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3004 - Create wallet
export NODE_ID=3004
node3004addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3004addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3004addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3004addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3004addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3005 - Create wallet
export NODE_ID=3005
node3005addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3005addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3005addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3005addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3005addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3006 - Create wallet
export NODE_ID=3006
node3006addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3006addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3006addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3006addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3006addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3007 - Create wallet
export NODE_ID=3007
node3007addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3007addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3007addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3007addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3007addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3008 - Create wallet
export NODE_ID=3008
node3008addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3008addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3008addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3008addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3008addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3009 - Create wallet
export NODE_ID=3009
node3009addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3009addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3009addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3009addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3009addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3010 - Create wallet
export NODE_ID=3010
node3010addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3010addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3010addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3010addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3010addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3011 - Create wallet
export NODE_ID=3011
node3011addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3011addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3011addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3011addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3011addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3012 - Create wallet
export NODE_ID=3012
node3012addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3012addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3012addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3012addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3012addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3013 - Create wallet
export NODE_ID=3013
node3013addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3013addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3013addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3013addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3013addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3014 - Create wallet
export NODE_ID=3014
node3014addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3014addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3014addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3014addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3014addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3015 - Create wallet
export NODE_ID=3015
node3015addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3015addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3015addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3015addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3015addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3016 - Create wallet
export NODE_ID=3016
node3016addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3016addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3016addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3016addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3016addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3017 - Create wallet
export NODE_ID=3017
node3017addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3017addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3017addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3017addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3017addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3018 - Create wallet
export NODE_ID=3018
node3018addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3018addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3018addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3018addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3018addr5=$(go run *.go createwallet | egrep -o "\w+$")

# NODE ID 3019 - Create wallet
export NODE_ID=3019
node3019addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3019addr2=$(go run *.go createwallet | egrep -o "\w+$")
node3019addr3=$(go run *.go createwallet | egrep -o "\w+$")
node3019addr4=$(go run *.go createwallet | egrep -o "\w+$")
node3019addr5=$(go run *.go createwallet | egrep -o "\w+$")

cp blockchain_3000.db blockchain_genesis.db


# Node ID 3000
export NODE_ID=3000
echo "${addr1}"
echo "${node3001addr1}"

go run *.go send -from ${addr1} -to ${node3001addr1} -amount 30 -mine
go run *.go send -from ${addr1} -to ${node3001addr2} -amount 30 -mine

cp blockchain_genesis.db blockchain_3001.db
cp blockchain_genesis.db blockchain_3002.db
cp blockchain_genesis.db blockchain_3003.db
cp blockchain_genesis.db blockchain_3004.db
cp blockchain_genesis.db blockchain_3005.db
cp blockchain_genesis.db blockchain_3006.db
cp blockchain_genesis.db blockchain_3007.db
cp blockchain_genesis.db blockchain_3008.db
cp blockchain_genesis.db blockchain_3009.db
cp blockchain_genesis.db blockchain_3010.db
cp blockchain_genesis.db blockchain_3011.db
cp blockchain_genesis.db blockchain_3012.db
cp blockchain_genesis.db blockchain_3013.db
cp blockchain_genesis.db blockchain_3014.db
cp blockchain_genesis.db blockchain_3015.db
cp blockchain_genesis.db blockchain_3016.db
cp blockchain_genesis.db blockchain_3017.db
cp blockchain_genesis.db blockchain_3018.db
cp blockchain_genesis.db blockchain_3019.db

# NODE ID 3000
export NODE_ID=3000
# go run *.go startnode&

# NODE ID 3001
export NODE_ID=3001
# go run *.go startnode&

# NODE ID 3002
export NODE_ID=3002

# NODE ID 3002
export NODE_ID=3003

# NODE ID 3004
export NODE_ID=3004

# NODE ID 3005
export NODE_ID=3005

# NODE ID 3006
export NODE_ID=3006

# NODE ID 3007
export NODE_ID=3007

# NODE ID 3008
export NODE_ID=3008

# NODE ID 3009
export NODE_ID=3009

# NODE ID 3010
export NODE_ID=3010

# NODE ID 3011
export NODE_ID=3011

# NODE ID 3012
export NODE_ID=3012

# NODE ID 3013
export NODE_ID=3013

# NODE ID 3014
export NODE_ID=3014

# NODE ID 3015
export NODE_ID=3015

# NODE ID 3016
export NODE_ID=3016

# NODE ID 3017
export NODE_ID=3017

# NODE ID 3018
export NODE_ID=3018

# NODE ID 3019
export NODE_ID=3019
