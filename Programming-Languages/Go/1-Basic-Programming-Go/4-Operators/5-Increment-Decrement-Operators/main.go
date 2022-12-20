package main

import "fmt"

func main() {
	// Declaración de post-incremento y post-decremento: `++`, `--`
	// No son una expresión, sino un declaración.
	var postIncremento = 3
	postIncremento++ // post-incremento
	var postDecremento = 3
	postDecremento-- // post-decremento

	fmt.Println("Post-Incremento", postIncremento)
	fmt.Println("Post-Decremento", postDecremento)
}
