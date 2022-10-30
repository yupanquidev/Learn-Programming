package main

import (
	"fmt"

	pk "./mypackage"
)

func main() {
	// Modificadores de acceso en funciones y Structs

	var myCar pk.CarPublic
	myCar.Brand = "Ferrari"
	myCar.Year = 2022
	fmt.Println(myCar)

	pk.PrintMessage("Hola")
	pk.PrintMessage1("Holl")
}
