package main

import (
	"fmt"
	"log"
)

func (cli *CLI) setStake(validatorsAddress string,  numberStake int) {
	fmt.Printf("Set stake number : %d\n", numberStake)
	if len(validatorsAddress) > 0 {
		if ValidateAddress(validatorsAddress) {
			fmt.Println("Validate is on. Address to receive rewards: ", validatorsAddress)
			NewCandidate(validatorsAddress, numberStake)
		} else {
			log.Panic("Wrong validators address!")
		}
	}else{
		log.Panic("Wrong validators address!")
	}
}
