package main

import (
	"bytes"
	"crypto/sha256"
	"fmt"
	"math/big"
)

// prepare data for hash
func (b *Block) prepareData() []byte {
	data := bytes.Join(
		[][]byte{
			b.PrevBlockHash,
			b.HashTransactions(),
			IntToHex(b.Timestamp),
		},
		[]byte{},
	)

	return data
}

// Run performs hash
func (b *Block) Run() []byte {
	var hashInt big.Int
	var hash [32]byte

	fmt.Printf("Validating a new block")
	data := b.prepareData()
	hash = sha256.Sum256(data)
	fmt.Printf("\r%x", hash)
	hashInt.SetBytes(hash[:])
	fmt.Print("\n\n")

	return hash[:]
}
