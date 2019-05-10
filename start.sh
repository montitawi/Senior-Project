#!/usr/bin/env bash
rm blockchain*.db
rm wallet_*.dat
re="Your new address: ([\w]+)"

# Node ID 3000
export NODE_ID=3000
OUTPUT1=$(go run *.go createwallet)
output2=$(go run *.go createwallet)
echo "${OUTPUT1}"
echo "${output2}"

addr1=$(echo "${OUTPUT1}" | egrep -o "\w+$")
addr2=$(echo "${output2}" | egrep -o "\w+$")

# Create Blockchain
bc=$(go run *.go createblockchain -address ${addr1})
echo "${bc}"

# Node ID 3001 - Create wallet
export NODE_ID=3001
node3001addr1=$(go run *.go createwallet | egrep -o "\w+$")
node3001addr2=$(go run *.go createwallet | egrep -o "\w+$")
go run *.go setstaketoken -stake 20 -address ${node3001addr2}

# NODE ID 3002
export NODE_ID=3002
node3002miner=$(go run *.go createwallet | egrep -o "\w+$")
go run *.go setstaketoken -stake 10 -address ${node3002miner}
echo "Miner Addr: ${node3002miner}"


cp blockchain_3000.db blockchain_genesis.db


# Node ID 3000
export NODE_ID=3000
echo "${addr1}"
echo "${node3001addr1}"

go run *.go send -from ${addr1} -to ${node3001addr1} -amount 8 -mine

cp blockchain_genesis.db blockchain_3001.db
cp blockchain_genesis.db blockchain_3002.db

# NODE ID 3000
export NODE_ID=3000
# go run *.go startnode&

# NODE ID 3001
export NODE_ID=3001
# go run *.go startnode&

# NODE ID 3002
export NODE_ID=3002
# go run *.go startnode -miner ${node3002miner}

