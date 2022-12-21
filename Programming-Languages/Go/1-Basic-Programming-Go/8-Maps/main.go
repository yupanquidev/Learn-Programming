package main

import (
	"fmt"
)

func main() {
	// Crear un map
	animals := make(map[string]string)
	animals["cat"] = "🐈‍⬛"
	animals["dog"] = "🦮"

	fmt.Println("Animales: ", animals)

	// Crear un map
	fruits := map[string]string{
		"apple":  "🍏",
		"banana": "🍌",
	}

	fmt.Println("Frutas: ", fruits)

	// Eliminar elementos
	delete(fruits, "banana")
	fmt.Println("Despúes de eliminar: ", fruits)

	// Obtener elementos
	fmt.Println("Obtener elementos: ", animals["cat"])

	// Crear elemento cuando no existe el elemento
	if _, ok := animals["Cóndor"]; !ok {
		animals["Cóndor"] = "🐦"
	}
	fmt.Println("Animales: ", animals)

}
