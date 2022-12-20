package main

import "fmt"

func main() {
	// Operadores Lógicos: &&, ||
	// Operador lógico AND == &&
	var age = 24
	fmt.Println("Edad: ", age >= 18 && age <= 60)

	// Operador lógico OR == ||
	fmt.Println("Niño o Viejo: ", age <= 18 || age >= 60)

	// Operador lógico Unario == !
	fmt.Println(!(4 == 5))

}
