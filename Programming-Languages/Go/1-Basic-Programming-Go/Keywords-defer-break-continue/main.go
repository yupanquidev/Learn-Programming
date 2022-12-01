package main

import "fmt"

func main() {
	// Uso de los keywords defer, break y continue

	// Defer = ejecuta la última function
	defer fmt.Println("Hola")
	fmt.Println("Mundo")

	// Continue y Break
	for i := 0; i < 10; i++ {
		fmt.Println(i)

		// Continue
		if i == 2 {
			fmt.Println("Es 2")
			continue
		}

		// Break
		if i == 8 {
			fmt.Println("Break")
			break
		}
	}
}
