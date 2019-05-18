package main

import (
	"fmt"
	"log"
)

func (cli *CLI) startNode(nodeID, validateAddress string) {
	fmt.Printf("Starting node %s\n", nodeID)
	if len(validateAddress) > 0 {
		if ValidateAddress(validateAddress) {
			fmt.Println("Validate is on. Address to receive rewards: ", validateAddress)
		} else {
			log.Panic("Wrong validate address!")
		}
	}
	StartServer(nodeID, validateAddress)
}
