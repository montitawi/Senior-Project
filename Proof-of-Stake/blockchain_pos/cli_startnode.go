package main

import (
	"fmt"
	"log"
)

func (cli *CLI) startNode(nodeID, validatorsAddress string) {
	fmt.Printf("Starting node %s\n", nodeID)
	if len(validatorsAddress) > 0 {
		if ValidateAddress(validatorsAddress) {
			fmt.Println("Validate is on. Address to receive rewards: ", validatorsAddress)
		} else {
			log.Panic("Wrong Validator address!")
		}
	}
	StartServer(nodeID, validatorsAddress)
}
