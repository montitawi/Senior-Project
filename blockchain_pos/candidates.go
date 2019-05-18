package main

import (
	"bytes"
	"crypto/elliptic"
	"encoding/gob"
	"io/ioutil"
	"log"
	"os"
)
const candidateFile = "candidates.dat"

type Candidates struct {
	Candidates map[string]int
}

func NewCandidate() *Candidates {
	candidates := Candidates{}
	candidates.Candidates = make(map[string]int)

	if fileExists(candidateFile) {
		_ = candidates.LoadFromFile()
	}
	return &candidates
}
// CreateWallet adds a candidate to candidates
func (c *Candidates) CreateCandidate(address string, stake int) {

	c.Candidates[address] = stake
	//fmt.Println(c)

}

// GetAddresses returns an array of addresses stored in the candidate file
func (c *Candidates) GetAddresses() []string {
	var addresses []string

	for address := range c.Candidates {
		addresses = append(addresses, address)
	}

	return addresses
}

func (c *Candidates) GetStake(address string) int {
	return c.Candidates[address]
}


// LoadFromFile loads candidate from the file
func (c *Candidates) LoadFromFile() error {
	if _, err := os.Stat(candidateFile); os.IsNotExist(err) {
		return err
	}

	fileContent, err := ioutil.ReadFile(candidateFile)
	if err != nil {
		log.Panic(err)
	}

	var candidate Candidates

	gob.Register(elliptic.P256())
	decoder := gob.NewDecoder(bytes.NewReader(fileContent))
	err = decoder.Decode(&candidate)
	if err != nil {
		log.Panic(err)
	}

	c.Candidates = candidate.Candidates

	return nil
}

// SaveToFile saves candidate to a file
func (c *Candidates) SaveToFile() {
	var content bytes.Buffer

	gob.Register(elliptic.P256())
	encoder := gob.NewEncoder(&content)
	err := encoder.Encode(c)
	if err != nil {
		log.Panic(err)
	}
	err = ioutil.WriteFile(candidateFile, content.Bytes(), 0644)
	if err != nil {
		log.Panic(err)
	}
}

func fileExists(filename string) bool {
	info, err := os.Stat(filename)
	if os.IsNotExist(err) {
		return false
	}
	return !info.IsDir()
}
