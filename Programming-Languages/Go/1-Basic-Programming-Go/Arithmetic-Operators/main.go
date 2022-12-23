package main

import "fmt"

func main() {
	x := 10
	y := 50

	// Suma
	result := x + y
	fmt.Println("Suma:", result)

	// Resta
	result = y - x
	fmt.Println("Resta:", result)

	// Multiplicación
	result = y * x
	fmt.Println("Multiplicación:", result)

	// División
	result = y / x
	fmt.Println("División:", result)

	// Modulo
	result = y % x
	fmt.Println("Modulo:", result)

	// Incremental
	x++ // x + 1
	fmt.Println("Incremental:", x)

	// Decremental
	x-- // x - 1
	fmt.Println("Decremental:", x)
}
