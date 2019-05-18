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

export addr1
export addr2
export node3001addr1
export node3001addr2
export node3001addr3
export node3001addr4
export node3001addr5

export node3002addr1
export node3002addr2
export node3002addr3
export node3002addr4
export node3002addr5

export node3003addr1
export node3003addr2
export node3003addr3
export node3003addr4
export node3003addr5

export node3004addr1
export node3004addr2
export node3004addr3
export node3004addr4
export node3004addr5

export node3005addr1
export node3005addr2
export node3005addr3
export node3005addr4
export node3005addr5

export node3006addr1
export node3006addr2
export node3006addr3
export node3006addr4
export node3006addr5

export node3007addr1
export node3007addr2
export node3007addr3
export node3007addr4
export node3007addr5

export node3008addr1
export node3008addr2
export node3008addr3
export node3008addr4
export node3008addr5

export node3009addr1
export node3009addr2
export node3009addr3
export node3009addr4
export node3009addr5

./transactions20.sh
./transactions30.sh
./transactions40.sh
./transactions50.sh
