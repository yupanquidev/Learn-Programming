package main

import "fmt"

func main() {
	// Declaración de variables
	helloMessage := "Hello"
	helloWorld := "World"

	// Println
	fmt.Println(helloMessage, helloWorld)
	fmt.Println(helloMessage, helloWorld)

	// Printf
	nombre := "Platzi"
	cursos := 500
	fmt.Printf("%s tiene más de %d cursos\n", nombre, cursos)
	fmt.Printf("%v tiene más de %v cursos\n", nombre, cursos)

	// Sprintf
	message := fmt.Sprintf("%v tiene más de %v cursos", nombre, cursos)
	fmt.Println(message)

	// Saber el tipo del dato con la librería fmt:
	fmt.Printf("helloMessage: %T\n", helloMessage)
	fmt.Printf("Cursos: %T\n", cursos)
}
