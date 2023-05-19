package main

import (
	"fmt"

	"github.com/ypnqh/Learn-Programming/tree/main/Programming-Languages/Go/2-POO/3-Encapsulation/course"
)

func main() {
	// Creación de instancias de objetos
	// Funciones constructoras
	GO := course.New("Go desde cero", 12.22, false)
	GO.SetUserIDs([]uint{12, 56, 89})
	GO.SetClasses(map[uint]string{
		1: "Introducción",
		2: "Estructuras",
		3: "Maps",
	})

	GO.SetName("POO en Go")
	fmt.Println(GO.Name())

	fmt.Printf("%+v\n", GO)
	GO.PrintClasses()
}
