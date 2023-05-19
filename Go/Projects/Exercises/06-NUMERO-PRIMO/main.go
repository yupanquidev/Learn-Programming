/*
 * Escribe un programa que se encargue de comprobar si un número es o no primo.
 * - Imprime los números primos entre 1 y 100.
 * 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41,
 * 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97
 */

package main

import "fmt"

func main(){
	for i := 1; i <= 100; i++ {
		if isPrime(i){
			fmt.Print(i, " ")
		}
	}
}

func isPrime(num int) bool  {
	if num < 2 {
		return false
	}

	for i := 2; i < num; i++ {
		if num % i == 0 {
			return false
		}
	}
	return true
}