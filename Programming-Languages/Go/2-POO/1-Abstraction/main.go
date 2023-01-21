package main

import "fmt"

// Estructura de cursos
type Course struct {
	Name   string
	Price  float64
	IsFree bool

	// Estructuras compuestas
	UserIDs []uint
	Classes map[uint]string
}

func main() {

	// Creación de instancias de objetos
	GO := Course{
		Name:    "Go desde cero",
		Price:   12.22,
		IsFree:  false,
		UserIDs: []uint{12, 56, 89},
		Classes: map[uint]string{
			1: "introdución",
			2: "Estructuras",
			3: "maps",
		},
	}

	// Acceder a los campos
	fmt.Println(GO.Name)
}
