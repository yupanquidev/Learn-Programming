package main

import "fmt"

func main() {
	// bool, string, numeric
	var a bool = true
	var b string = "Perro"
	var c byte = 100
	var d rune = -100
	var e rune = 'a' //  Código Unicode.
	var f float64 = 3.144

	// Para saber el tipo y el valor.
	// Agregar %T = Tipo y %v = Valor llamados verbos.
	fmt.Printf("Tipo: %T, Valor: %v", a, a)
	fmt.Printf("\nTipo: %T, Valor: %v", b, b)
	fmt.Printf("\nTipo: %T, Valor: %v", c, c)
	fmt.Printf("\nTipo: %T, Valor: %v", d, d)
	fmt.Printf("\nTipo: %T, Valor: %v", e, e)
	fmt.Printf("\nTipo: %T, Valor: %v", f, f)

	// Casting
	var a1 uint8 = 100
	var a2 uint16 = 2021
	c1 := uint16(a1) + a2 // Es un casting

	fmt.Printf("\nTipo: %T, Valor: %v", c1, c1)
	fmt.Printf("\nTipo: %T, Valor: %v", a1, a1)
}
