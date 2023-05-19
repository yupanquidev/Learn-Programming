/*
 * Escribe un programa que, dado un número, compruebe y muestre si es primo, fibonacci y par.
 * Ejemplos:
 * - Con el número 2, nos dirá: "2 es primo, fibonacci y es par"
 * - Con el número 7, nos dirá: "7 es primo, no es fibonacci y es impar"
 */

package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Println(checkPrimeFibonacciEven(2))
	fmt.Println(checkPrimeFibonacciEven(5))
	fmt.Println(checkPrimeFibonacciEven(12))
}

func checkPrimeFibonacciEven(number int) string {
	result := fmt.Sprintf("El número %d ", number)

	// Si es primo
	if number > 1 {
		for i := 2; i < number; i++ {
			switch number % i {
			case 0: 
				result += "no es primo, "
			default:
				result += "es primo, "
			}
			break
		}
	} else {
		result += "no es primo, "
	}

	// Si es fibonacci
	if number > 0 && isPerfectSquare(5*number*number+4) || isPerfectSquare(5*number*number-4) {
		result += "es fibonacci, "
	} else {
		result += "no es fibonacci, "
	}

	// Si es par
	if number%2 == 0 {
		result += "es par"
	} else {
		result += "es impar"
	}
	return result
}

func isPerfectSquare(number int) bool {
	squareRoot := int(math.Sqrt(float64(number)))
	return (squareRoot*squareRoot == number)
}
