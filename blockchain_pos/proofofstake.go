package main

import (
	"fmt"
	"math/rand"
	"time"
)


func pickupWinner() {

	var startTime = time.Now()
	var pickupStake int
	var listAddress []string
	var listStake []int
	var allNumber []int
	var sumStake int
	var candidates = make(map[string][]int)

	candidate := NewCandidate()
	addresses := candidate.GetAddresses()
	for _, address := range addresses {
		listAddress = append(listAddress, address)
		stakes := candidate.GetStake(address)
		listStake = append(listStake, stakes)
		sumStake += stakes
	}

	for i := 0; i < sumStake; i++{
		allNumber = append(allNumber, i)
	}

	pickupStake = rand.Intn(len(allNumber))

	//fmt.Println(allNumber)

	for index, stake := range listStake {
		var randomStake []int
		for i := 0; i < stake; i++{
			randNum := rand.Intn(len(allNumber))
			randomStake = append(randomStake, randNum)
			allNumber = append(allNumber[:randNum], allNumber[randNum+1:]...)

		}

		candidates[listAddress[index]] = randomStake
		//fmt.Println(candidates)
		//fmt.Println(allNumber)


	}

	//fmt.Println(pickupStake)
	//fmt.Println(sumStake)

	for _, address := range listAddress{
		for _, stake := range candidates[address]{
			if stake == pickupStake {
				fmt.Println(address)
				fmt.Println(stake)
				break
			}
		}
	}

	elapsed := time.Since(startTime)
	fmt.Println(elapsed)

}
