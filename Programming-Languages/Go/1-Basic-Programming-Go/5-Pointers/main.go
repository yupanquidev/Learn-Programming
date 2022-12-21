package main

import "fmt"

func main() {

	fruit := "🍏"

	// Declaración de variable de puntero
	var pointers *string
	// Adignando una dirección de memoria
	pointers = &fruit
	*pointers = "🍍" // Modifica el valor de la fruta
	fmt.Printf("Tipo: %T, Valor: %s, Dirección: %v\n", fruit, fruit, &fruit)
	fmt.Printf("Tipo: %T, Valor: %v, Desreferenciación: %v\n", pointers, pointers, *pointers)
}
