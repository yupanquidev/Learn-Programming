/*
 * Crea un programa que invierta el orden de una cadena de texto sin usar funciones propias del lenguaje que lo hagan de forma automática.
 * - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
*/

package main

import "fmt"

func main() {
	fmt.Println(reverse("Hola mundo"))
}

func reverse(text string) string {
	textCount := len(text) - 1
	reversedText := ""

	for i := textCount; i >= 0; i-- {
		reversedText += string(text[i])
	}

	return reversedText
}
