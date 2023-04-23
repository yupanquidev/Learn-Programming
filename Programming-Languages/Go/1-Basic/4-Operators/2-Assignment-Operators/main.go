package main

import "fmt"

func main() {
	// Operadores de asignación: =, +=, -=, *=, /=, %=
	var asignacion = 10 // Asignación simple

	var asignacionAditiva = 5
	asignacionAditiva += 2 // Asignación aditiva

	var asignacionSustractiva = 5
	asignacionSustractiva -= 2 // Asignación sustractiva

	var asignacionMultiplicativa = 5
	asignacionMultiplicativa *= 2 // Asignación multiplicativa

	var asignacionDivisiva = 5
	asignacionDivisiva /= 2 // Asignación divisiva

	var asignacionModulo = 5
	asignacionModulo %= 2 // Asignación módulo

	fmt.Println("Asignación simple: ", asignacion)
	fmt.Println("Asignación aditiva: ", asignacionAditiva)
	fmt.Println("Asignación sustractiva: ", asignacionSustractiva)
	fmt.Println("Asignación multiplicativa: ", asignacionMultiplicativa)
	fmt.Println("Asignación divisiva: ", asignacionDivisiva)
	fmt.Println("Asignación módulo: ", asignacionModulo)
}
