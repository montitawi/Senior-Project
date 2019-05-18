#!/usr/bin/env bash
rm blockchain*.db
rm wallet_*.dat
rm candidates.dat
rm blockchain_go

go build

re="Your new address: ([\w]+)"

# Node ID 3000
export NODE_ID=3000
OUTPUT1=$(./blockchain_go createwallet)
output2=$(./blockchain_go createwallet)
echo "${OUTPUT1}"
echo "${output2}"

addr1=$(echo "${OUTPUT1}" | egrep -o "\w+$")
addr2=$(echo "${output2}" | egrep -o "\w+$")

# Create Blockchain
bc=$(./blockchain_go createblockchain -address ${addr1})
echo "${bc}"

# Node ID 3001 - Create wallet
export NODE_ID=3001
node3001addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3001addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3001addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3001addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "${node3001addr3}"
echo "${node3001addr4}"
./blockchain_go setstaketoken -stake 2 -address ${node3001addr1}
./blockchain_go setstaketoken -stake 4 -address ${node3001addr2}

# NODE ID 3002
export NODE_ID=3002
node3002addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3002addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3002addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3002addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "${node3002addr4}"
./blockchain_go setstaketoken -stake 6 -address ${node3002addr1}
./blockchain_go setstaketoken -stake 8 -address ${node3002addr2}
./blockchain_go setstaketoken -stake 10 -address ${node3002addr3}
echo "Validator Addr: ${node3002addr1}"
echo "Validator Addr: ${node3002addr2}"
echo "Validator Addr: ${node3002addr3}"

# NODE ID 3002
export NODE_ID=3003
node3003addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3003addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3003addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3003addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "${node3003addr4}"
./blockchain_go setstaketoken -stake 12 -address ${node3003addr1}
./blockchain_go setstaketoken -stake 14 -address ${node3003addr2}
./blockchain_go setstaketoken -stake 16 -address ${node3003addr3}
echo "Validator Addr: ${node3003addr1}"
echo "Validator Addr: ${node3003addr2}"
echo "Validator Addr: ${node3003addr3}"

# NODE ID 3002
export NODE_ID=3004
node3004addr1=$(./blockchain_go createwallet | egrep -o "\w+$")
node3004addr2=$(./blockchain_go createwallet | egrep -o "\w+$")
node3004addr3=$(./blockchain_go createwallet | egrep -o "\w+$")
node3004addr4=$(./blockchain_go createwallet | egrep -o "\w+$")
echo "${node3004addr1}"
echo "${node3004addr2}"
echo "${node3004addr3}"
echo "${node3004addr4}"


cp blockchain_3000.db blockchain_genesis.db


# Node ID 3000
export NODE_ID=3000
echo "${addr1}"
echo "${node3001addr1}"

./blockchain_go send -from ${addr1} -to ${node3001addr1} -amount 14 -mine

cp blockchain_genesis.db blockchain_3001.db
cp blockchain_genesis.db blockchain_3002.db
cp blockchain_genesis.db blockchain_3003.db

./blockchain_go pickupwinner

# NODE ID 3000
export NODE_ID=3000
# go run *.go startnode&

# NODE ID 3001
export NODE_ID=3001
# go run *.go startnode&

# NODE ID 3002
export NODE_ID=3002
# go run *.go startnode -miner ${node3002miner}

# NODE ID 3002
export NODE_ID=3003

# NODE ID 3004
export NODE_ID=3004
