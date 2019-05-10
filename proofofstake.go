package main

import (
	"fmt"
	"math/rand"
)

var listAddress []string
var listStake []int
var sumStake int
var winner = "highest"
var add string


func NewCandidate(address string, stake int)  {
	//if listAddress != nil {
	//	for index, addr := range listAddress{
	//		if addr == address{
	//			listStake[index] = stake
	//		}else{
	//			listAddress = append(listAddress, address)
	//			listStake = append(listStake, stake)
	//		}
	//	}
	//}else{
		listAddress = append(listAddress, address)
		listStake = append(listStake, stake)
	//}

	//fmt.Println(listAddress)
	//fmt.Println(listStake)

}

func pickupWinner() {
	//var randomStake []int
	fmt.Println(listAddress)
	fmt.Println(listStake)
	var lowest int
	var pickupStake int
	lowest = listStake[0]
	for index, stake := range listStake {
		fmt.Println(index)
		if stake < lowest{
			lowest = stake
		}
		sumStake += stake
	}

	pickupStake = rand.Intn(sumStake)
	fmt.Println(pickupStake)
	fmt.Println(sumStake)
	//
	//for i := 0; i < lowest; i++ {
	//	var check = true
	//	var randStake = rand.Intn(sumStake)
	//	if randomStake != nil{
	//		for check ==  true{
	//			for _, stake := range randomStake {
	//				if stake == randStake {
	//					randStake = rand.Intn(sumStake)
	//					check =  true
	//					break
	//				}else{
	//					check =  false
	//					fmt.Print(randStake)
	//					fmt.Println(randomStake)
	//				}
	//			}
	//		}
	//		randomStake = append(randomStake, randStake)
	//
	//	} else{
	//		randomStake = append(randomStake, randStake)
	//	}
	//	if pickupStake == randomStake[i] {
	//		winner = "lowest"
	//		add = listAddress[0]
	//		fmt.Println(randomStake)
	//	}
	//}
	//
	////fmt.Println(randomStake)
	////fmt.Println(pickupStake)
	////fmt.Println(winner)
	//fmt.Println(add)

}
