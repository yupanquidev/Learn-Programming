/*
 * Crea un programa que cuente cuantas veces se repite cada palabra y que muestre el recuento final de todas ellas.
 * - Los signos de puntuación no forman parte de la palabra.
 * - Una palabra es la misma aunque aparezca en mayúsculas y minúsculas.
 * - No se pueden utilizar funciones propias del lenguaje que lo resuelvan automáticamente.
*/

package main

import (
	"fmt"
	"regexp"
	"strconv"
	"strings"
)

func main() {
	countWords("Hola, mi nombre es Humberto, Humberto Yupanqui y me gusta programar.")
}

func countWords(text string) {
	words := make(map[string]int)

	text = strings.ToLower(text)
	reg, _ := regexp.Compile("[^a-z0-9]+")
	text = reg.ReplaceAllString(text, " ")

	splitText := strings.Split(text, " ")
	for _, key := range splitText {
		if key == "" {
			continue
		}
		if _, ok := words[key]; ok {
			words[key]++
		} else {
			words[key] = 1
		}
	}

	for word, count := range words {
		var countWord string
		if count == 1 {
			countWord = "vez"
		} else {
			countWord = "veces"
		}
		fmt.Println(word + " se ha repetido " + strconv.Itoa(count) + " " + countWord)
	}
}
