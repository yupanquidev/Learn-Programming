package main

import "fmt"

func main() {
	// Modificadores de acceso en funciones y Structs

	var myCar mypackage.CarPublic
	myCar.Brand = "Ferrari"
	myCar.Year = 2022
	fmt.Println(myCar)
}
