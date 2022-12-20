package main

import "fmt"

func main() {
	// Operadores Aritméticos: (), *, /, %, +, -
	var a = 4 + 2         // Suma
	var b = 4 - 2         // Resta
	var c = 4 * 2         // Multiplicación
	var d = 4 / 2         // División
	var e = 4 % 2         // Residuo
	var f = 1 + 4 - 5*4/2 // Ejm. jerarquía de operaciones aritméticas

	fmt.Println("Suma: ", a)
	fmt.Println("Resta: ", b)
	fmt.Println("Multiplicaión: ", c)
	fmt.Println("División: ", d)
	fmt.Println("Resto: ", e)
	fmt.Println("Jerarquía: ", f)
}
