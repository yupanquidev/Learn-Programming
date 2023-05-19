/*
* Escribe una función que reciba dos palabras (String) y
* retorne verdadero o falso (Boolean) según sean o no anagramas.
	* - Un Anagrama consiste en formar una palabra reordenando
	* - TODAS las letras de otra palabra inicial.
	* - NO hace falta comprobar que ambas palabras existan.
	* - Dos palabras exactamente iguales no son anagrama.
*/

package main

import (
	"fmt"
	"reflect"
	"sort"
	"strings"
)

func main()  {
	fmt.Println(isAnagram("Credo", "Cerdo"))
}

func isAnagram(wordOne, wordTwo string) bool  {
	if strings.ToLower(wordOne) == strings.ToLower(wordTwo) {
		return false
	}

	// Dividir en casa letra de una palabra
	wordOneChars := strings.Split(strings.ToLower(wordOne), "")
	wordTwoChars := strings.Split(strings.ToLower(wordTwo), "")

	// Ordenar de la A-Z
	sort.Strings(wordOneChars)
	sort.Strings(wordTwoChars)

	// Comparar valores
	return reflect.DeepEqual(wordOneChars, wordTwoChars)
}

// strings.ToLower() -> Función para convertir cadenas de texto a minúsculas.
// strings.Split() -> Función para dividir cada letra de una palabra en un arreglo de letras, para luego ser ordenadas y comparadas con las letras de otra palabra.
// sort.Strings() -> Función para ordenar un arreglo de cadenas en orden alfabético.
// reflect.DeepEqual() -> Función para comparar dos valores y determinar si son iguales. A diferencia de la comparación normal '==', esta función compara cada valor dentro de los tipos, incluso los valores anidados. Es utilizado para comparar valores complejos, como estructuras o arreglos.
