#!/usr/bin/env bash
. ./var_file

./blockchain_pow getbalance -address ${node3001addr0}
./blockchain_pow getbalance -address ${node3001addr1}
./blockchain_pow getbalance -address ${node3001addr2}
./blockchain_pow getbalance -address ${node3001addr3}
./blockchain_pow getbalance -address ${node3001addr4}
./blockchain_pow getbalance -address ${node3001addr5}
./blockchain_pow getbalance -address ${node3002addr1}
./blockchain_pow getbalance -address ${node3002addr2}
./blockchain_pow getbalance -address ${node3002addr3}
./blockchain_pow getbalance -address ${node3002addr4}
./blockchain_pow getbalance -address ${node3002addr5}
