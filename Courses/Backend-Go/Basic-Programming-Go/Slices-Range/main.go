package main

import "fmt"

func isPalindromo(text string) {
	var textReverse string

	for i := len(text) - 1; i >= 0; i-- {
		textReverse += string(text[i])
	}
	if text == textReverse {
		fmt.Println("Es palindromo")
	} else {
		fmt.Println("No es un palindromo")
	}
}
func main() {

	slice := []string{"Hola", "que", "hace"}
	for i, valor := range slice {
		fmt.Println(i, valor)
	}

	// ama
	// amor  a roma
	isPalindromo("roma a amor")

}
