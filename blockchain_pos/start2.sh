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
bc=$(./blockchain_go createblockchain -address ${addr1})
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
echo "Validator Addr: ${node3001addr2}"
./blockchain_go setstaketoken -stake 1 -address ${node3001addr2}

# NODE ID 3002 - Create wallet
export NODE_ID=3002
node3002addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3002addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3002addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3002addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3002addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3002"
./blockchain_go listaddresses
echo "Validator Addr: ${node3002addr2}"
./blockchain_go setstaketoken -stake 2 -address ${node3002addr2}
# NODE ID 3003 - Create wallet
export NODE_ID=3003
node3003addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3003addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3003addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3003addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3003addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3003"
./blockchain_go listaddresses
echo "Validator Addr: ${node3003addr2}"
./blockchain_go setstaketoken -stake 3 -address ${node3003addr2}
# NODE ID 3004 - Create wallet
export NODE_ID=3004
node3004addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3004addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3004addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3004addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3004addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3004"
./blockchain_go listaddresses
echo "Validator Addr: ${node3004addr2}"
./blockchain_go setstaketoken -stake 4 -address ${node3004addr2}

# NODE ID 3005 - Create wallet
export NODE_ID=3005
node3005addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3005addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3005addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3005addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3005addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3005"
./blockchain_go listaddresses
echo "Validator Addr: ${node3005addr2}"
./blockchain_go setstaketoken -stake 5 -address ${node3005addr2}

# NODE ID 3006 - Create wallet
export NODE_ID=3006
node3006addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3006addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3006addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3006addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3006addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3006"
./blockchain_go listaddresses
echo "Validator Addr: ${node3006addr2}"
./blockchain_go setstaketoken -stake 6 -address ${node3006addr2}

# NODE ID 3007 - Create wallet
export NODE_ID=3007
node3007addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3007addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3007addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3007addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3007addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3007"
./blockchain_go listaddresses
echo "Validator Addr: ${node3007addr2}"
./blockchain_go setstaketoken -stake 7 -address ${node3007addr2}

# NODE ID 3008 - Create wallet
export NODE_ID=3008
node3008addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3008addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3008addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3008addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3008addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3008"
./blockchain_go listaddresses
echo "Validator Addr: ${node3008addr2}"
./blockchain_go setstaketoken -stake 8 -address ${node3008addr2}

# NODE ID 3009 - Create wallet
export NODE_ID=3009
node3009addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3009addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3009addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3009addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3009addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3009"
./blockchain_go listaddresses
echo "Validator Addr: ${node3009addr2}"
./blockchain_go setstaketoken -stake 9 -address ${node3009addr2}

# NODE ID 3010 - Create wallet
export NODE_ID=3010
node3010addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3010addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3010addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3010addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3010addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3010"
./blockchain_go listaddresses
echo "Validator Addr: ${node30010addr2}"
./blockchain_go setstaketoken -stake 10 -address ${node3010addr2}

# NODE ID 3011 - Create wallet
export NODE_ID=3011
node3011addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3011addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3011addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3011addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3011addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3011"
./blockchain_go listaddresses

# NODE ID 3012 - Create wallet
export NODE_ID=3012
node3012addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3012addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3012addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3012addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3012addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3012"
./blockchain_go listaddresses

# NODE ID 3013 - Create wallet
export NODE_ID=3013
node3013addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3013addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3013addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3013addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3013addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 30013"
./blockchain_go listaddresses

# NODE ID 3014 - Create wallet
export NODE_ID=3014
node3014addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3014addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3014addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3014addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3014addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3014"
./blockchain_go listaddresses

# NODE ID 3015 - Create wallet
export NODE_ID=3015
node3015addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3015addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3015addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3015addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3015addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3015"
./blockchain_go listaddresses

# NODE ID 3016 - Create wallet
export NODE_ID=3016
node3016addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3016addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3016addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3016addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3016addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3016"
./blockchain_go listaddresses

# NODE ID 3017 - Create wallet
export NODE_ID=3017
node3017addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3017addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3017addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3017addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3017addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3017"
./blockchain_go listaddresses

# NODE ID 3018 - Create wallet
export NODE_ID=3018
node3018addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3018addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3018addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3018addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3018addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3018"
./blockchain_go listaddresses

# NODE ID 3019 - Create wallet
export NODE_ID=3019
node3019addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3019addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3019addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3019addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
node3019addr5=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "NODE 3019"
./blockchain_go listaddresses


cp blockchain_3000.db blockchain_genesis.db


# Node ID 3000
export NODE_ID=3000
echo "${addr1}"
echo "${node3001addr1}"

./blockchain_go send -from ${addr1} -to ${node3001addr1} -amount 251 -mine


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

export NODE_ID=3002
node3002Miner=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "Miner Addr : ${node3002Miner}"

