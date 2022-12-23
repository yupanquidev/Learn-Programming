package main

import (
	"fmt"
	"log"
	"strconv"
)

func main() {
	// Estructura de condicion if
	icon := "🦙"

	if icon == "🦙" {
		fmt.Println("Es una llama")
	} else if icon == "🐑" {
		fmt.Println("Es una oveja")
	} else {
		fmt.Printf("El icon es: %s", icon)
	}

	valor1 := 1
	valor2 := 2
	// With AND
	if valor1 == 1 && valor2 == 3 {
		fmt.Println("Es verdad")
	} else {
		fmt.Println("Es falso")
	}

	// With OR
	if valor1 == 0 || valor2 == 2 {
		fmt.Println("Es verdad, OR")
	}

	// Convertir texto a número
	value, err := strconv.Atoi("53")
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println("Value:", value)
}
