package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Print("Ingresa un número: ")
	fmt.Scanln(&n)

	result := 1
	for i := 1; i <= n; i++ {
		result *= i
	}
	fmt.Println(n, "! =", result)
}
