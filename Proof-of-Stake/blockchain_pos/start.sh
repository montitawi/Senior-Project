#!/usr/bin/env bash
rm blockchain*.db
rm wallet_*.dat
rm blockchain_pos
rm var_file
rm candidates.dat
go build
re="Your new address: ([\w]+)"
> var_file

# Node ID 3000
export NODE_ID=3000
OUTPUT1=$(./blockchain_pos createwallet)
OUTPUT2=$(./blockchain_pos createwallet)
echo "${OUTPUT1}"
echo "${OUTPUT2}"

addr1=$(echo "${OUTPUT1}" | egrep -o "\w+$")
addr2=$(echo "${OUTPUT2}" | egrep -o "\w+$")

# Create Blockchain
bc=$(go run *.go createblockchain -address ${addr1})
echo "${bc}"

# Node ID 3001 - Create wallet
export NODE_ID=3001
tempnode3001addr0=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3001addr0=$tempnode3001addr0 >> var_file
echo export node3001addr0 >> var_file
tempnode3001addr1=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3001addr1=$tempnode3001addr1 >> var_file
echo export node3001addr1 >> var_file
tempnode3001addr2=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3001addr2=$tempnode3001addr2 >> var_file
echo export node3001addr2 >> var_file
tempnode3001addr3=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3001addr3=$tempnode3001addr3 >> var_file
echo export node3001addr3 >> var_file
tempnode3001addr4=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3001addr4=$tempnode3001addr4 >> var_file
echo export node3001addr4 >> var_file
tempnode3001addr5=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3001addr5=$tempnode3001addr5 >> var_file
echo export node3001addr5 >> var_file

echo "NODE 3001"
./blockchain_pos listaddresses

./blockchain_pos setstaketoken -stake 2 -address ${tempnode3001addr1}
./blockchain_pos setstaketoken -stake 4 -address ${tempnode3001addr2}

# NODE ID 3002 - Create wallet
export NODE_ID=3002
tempnode3002addr1=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3002addr1=$tempnode3002addr1 >> var_file
echo export node3002addr1 >> var_file
tempnode3002addr2=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3002addr2=$tempnode3002addr2 >> var_file
echo export node3002addr2 >> var_file
tempnode3002addr3=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3002addr3=$tempnode3002addr3 >> var_file
echo export node3002addr3 >> var_file
tempnode3002addr4=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3002addr4=$tempnode3002addr4 >> var_file
echo export node3002addr4 >> var_file
tempnode3002addr5=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3002addr5=$tempnode3002addr5 >> var_file
echo export node3002addr5 >> var_file

echo "NODE 3002"
./blockchain_pos listaddresses

./blockchain_pos setstaketoken -stake 6 -address ${tempnode3002addr1}
./blockchain_pos setstaketoken -stake 8 -address ${tempnode3002addr2}
./blockchain_pos setstaketoken -stake 10 -address ${tempnode3002addr3}
echo "Validator Addr: ${tempnode3002addr1}"
echo "Validator Addr: ${tempnode3002addr2}"
echo "Validator Addr: ${tempnode3002addr3}"


# NODE ID 3003 - Create wallet
export NODE_ID=3003
tempnode3003addr1=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3003addr1=$tempnode3003addr1 >> var_file
echo export node3003addr1 >> var_file
tempnode3003addr2=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3003addr2=$tempnode3003addr2 >> var_file
echo export node3003addr2 >> var_file
tempnode3003addr3=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3003addr3=$tempnode3003addr3 >> var_file
echo export node3003addr3 >> var_file
tempnode3003addr4=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3003addr4=$tempnode3003addr4 >> var_file
echo export node3003addr4 >> var_file
tempnode3003addr5=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3003addr5=$tempnode3003addr5 >> var_file
echo export node3003addr5 >> var_file

echo "NODE 3003"
./blockchain_pos listaddresses

./blockchain_pos setstaketoken -stake 12 -address ${tempnode3003addr1}
./blockchain_pos setstaketoken -stake 14 -address ${tempnode3003addr2}
./blockchain_pos setstaketoken -stake 16 -address ${tempnode3003addr3}
echo "Validator Addr: ${tempnode3003addr1}"
echo "Validator Addr: ${tempnode3003addr2}"
echo "Validator Addr: ${tempnode3003addr3}"

# NODE ID 3004 - Create wallet
export NODE_ID=3004
tempnode3004addr1=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3004addr1=$tempnode3004addr1 >> var_file
echo export node3004addr1 >> var_file
tempnode3004addr2=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3004addr2=$tempnode3004addr2 >> var_file
echo export node3004addr2 >> var_file
tempnode3004addr3=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3004addr3=$tempnode3004addr3 >> var_file
echo export node3004addr3 >> var_file
tempnode3004addr4=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3004addr4=$tempnode3004addr4 >> var_file
echo export node3004addr4 >> var_file
tempnode3004addr5=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3004addr5=$tempnode3004addr5 >> var_file
echo export node3004addr5 >> var_file

echo "NODE 3004"
./blockchain_pos listaddresses

# NODE ID 3005 - Create wallet
export NODE_ID=3005
tempnode3005addr1=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3005addr1=$tempnode3005addr1 >> var_file
echo export node3005addr1 >> var_file
tempnode3005addr2=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3005addr2=$tempnode3005addr2 >> var_file
echo export node3005addr2 >> var_file
tempnode3005addr3=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3005addr2=$tempnode3005addr3 >> var_file
echo export node3005addr3 >> var_file
tempnode3005addr4=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3005addr4=$tempnode3005addr4 >> var_file
echo export node3005addr4 >> var_file
tempnode3005addr5=$(./blockchain_pos createwallet | egrep -o "\w+$")
echo node3005addr5=$tempnode3005addr5 >> var_file
echo export node3005addr5 >> var_file

echo "NODE 3005"
./blockchain_pos listaddresses


echo "--------------------------------------------------------------------"

cp blockchain_3000.db blockchain_genesis.db


# Node ID 3000
export NODE_ID=3000
echo "Center Node : ${addr1}"
echo "Wallet_1 : ${tempnode3001addr0}"

./blockchain_pos send -from ${addr1} -to ${tempnode3001addr0} -amount 251 -mine


echo "--------------------------------------------------------------------"

cp blockchain_genesis.db blockchain_3001.db
cp blockchain_genesis.db blockchain_3002.db
cp blockchain_genesis.db blockchain_3003.db
cp blockchain_genesis.db blockchain_3004.db
cp blockchain_genesis.db blockchain_3005.db

./blockchain_pos pickupwinner
