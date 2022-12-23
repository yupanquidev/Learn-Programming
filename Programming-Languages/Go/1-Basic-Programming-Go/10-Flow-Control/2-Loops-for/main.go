package main

import "fmt"

func main() {
	// Solo existe un solo ciclo iterativo en Go "FOR"
	// For condicional
	fmt.Println("Ciclo for:")
	for i := 0; i <= 5; i++ {
		fmt.Println(i)
	}

	// For como while
	fmt.Println("\nCiclo For como while:")
	counter := 0
	for counter <= 5 {
		fmt.Println(counter)
		counter++
	}

	// For forever
	/* 	counterForever := 0
	for {
		fmt.Println(counterForever)
		counterForever++
		} */

	// For como foreach
	fmt.Println("\nCiclo For como foreach:")
	nums := []uint8{2, 4, 6, 8}
	for i := range nums {
		nums[i] *= 2
	}
	fmt.Println(nums)
	// fmt.Println("Indice: ", i, "Valor: ", v)

	// for range maps
	sports := map[string]string{"Basketball": "🏀", "Soccer": "⚽"}
	for key, v := range sports {
		fmt.Println("Key: ", key, "Valor: ", v)
	}

	// for range string
	hello := "hello"
	for _, a := range hello {
		fmt.Println(string(a))
	}
}
