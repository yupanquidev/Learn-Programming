package main

import "fmt"

func main() {

	var n int
	fmt.Print("Ingrese el número: ")
	fmt.Scanln(&n)
	fmt.Println()

	for i := 0; i <= 12; i++ {
		res := n * i
		fmt.Println(n, "X", i, "=", res)
	}
}
