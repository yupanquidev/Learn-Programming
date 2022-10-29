package main

import "fmt"

func main() {
	// Solo existe un solo ciclo iterativo en Go "FOR"
	// For condicional
	for i := 0; i <= 10; i++ {
		fmt.Println(i)
	}

	fmt.Printf("\n")
	// For while
	counter := 0
	for counter <= 10 {
		fmt.Println(counter)
		counter++
	}

	// For forever
	counterForever := 0
	for {
		fmt.Println(counterForever)
		counterForever++
	}
}
