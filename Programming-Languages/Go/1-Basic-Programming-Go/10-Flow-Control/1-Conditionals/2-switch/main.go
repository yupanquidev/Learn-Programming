package main

import "fmt"

func main() {
	// Sintaxis de Switch
	icon := "🦅"

	switch icon {
	case "🦅", "🦚":
		fmt.Println("Es un Ave")
	case "🍏", "🍌":
		fmt.Println("Es una Fruta")
	default:
		fmt.Println("No es ninguno")
	}

	// Con condición
	switch modulo := 4 % 2; modulo {
	case 0:
		fmt.Println("Es par")
	default:
		fmt.Println("Es impar")
	}

	// Sin condición
	value := 50
	switch {
	case value > 100:
		fmt.Println("Es mayor a 100")
	case value < 0:
		fmt.Println("Es menor a 0")
	default:
		fmt.Println("No condición")
	}
}
