package main

import "fmt"

func main() {
	// Creación de instancias de objetos
	GO := &course.Course{
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

	GO.PrintClasses()
	GO.ChangePrice(15.5)
	fmt.Println(GO.Price)
}
