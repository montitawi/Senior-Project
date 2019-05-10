package main

import (
	"bytes"
	"crypto/sha256"
	"fmt"
	"math/big"
)

//var (
//	maxNonce = math.MaxInt64
//)

//const targetBits = 16

// ProofOfWork represents a proof-of-work
type ProofOfWork struct {
	block  *Block
	//target *big.Int
}

// NewProofOfWork builds and returns a ProofOfWork
func NewProofOfWork(b *Block) *ProofOfWork {
	//target := big.NewInt(1)
	//target.Lsh(target, uint(256-targetBits))

	pow := &ProofOfWork{b}

	return pow
}
func (pow *ProofOfWork) prepareData() []byte {
	data := bytes.Join(
		[][]byte{
			pow.block.PrevBlockHash,
			pow.block.HashTransactions(),
			IntToHex(pow.block.Timestamp)},
		[]byte{},
	)

	return data
}

// Run performs a proof-of-work
func (pow *ProofOfWork) Run() ([]byte) {
	var hashInt big.Int
	var hash [32]byte

	fmt.Printf("Validate a new block")

		data := pow.prepareData()
		hash = sha256.Sum256(data)
		hashInt.SetBytes(hash[:])

	fmt.Print("\n\n")

	return hash[:]
}

// Validate validates block's PoW
//func (pow *ProofOfWork) Validate() bool {
//	var hashInt big.Int
//	data := pow.prepareData()
//	hash := sha256.Sum256(data)
//	hashInt.SetBytes(hash[:])
//
//	isValid := hashInt.Cmp(pow.target) == -1
//
//	return isValid
//}
