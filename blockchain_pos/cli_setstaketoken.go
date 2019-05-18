package main

import (
	"fmt"
	"log"
)

//var addresses []string
//var stake []int

func (cli *CLI) setStake(validatorsAddress string,  numberStake int) {
	fmt.Printf("Set stake number : %d\n", numberStake)
	if len(validatorsAddress) > 0 {
		if ValidateAddress(validatorsAddress) {
			fmt.Println("Address to receive rewards: ", validatorsAddress)
			candidate := NewCandidate()
			candidate.CreateCandidate(validatorsAddress, numberStake)
			candidate.SaveToFile()
			//addresses := candidate.GetAddresses()
			//for _, address := range addresses {
			//	fmt.Println(address)
			//	stakes := candidate.GetStake(address)
			//	fmt.Println(stakes)
			//}
		} else {
			log.Panic("Wrong validators address!")
		}
	}else{
		log.Panic("Wrong validators address!")
	}
}
