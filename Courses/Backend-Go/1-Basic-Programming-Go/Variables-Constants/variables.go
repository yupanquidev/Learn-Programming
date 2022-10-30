package main

import "fmt"

func main() {
	// Declaración de variables enteras

	// 3 Formas de declarar variables en Go
	var area int
	var altura int = 14
	base := 12

	fmt.Println(base, altura, area)

	// Zero value => es un valor uqe va tener por defecto al momento de crear una variable cuando no le asignamos un valor.

	// Valores por defecto
	var a int     // Valor por defecto es = 0
	var b float64 // Valor por defecto es = 0
	var c string  // Valor por defecto es = "vacio"
	var d bool    // Valor por defecto es = false

	fmt.Println(a, b, c, d)
}
