/*
 * Escribe un programa que imprima los 50 primeros números
 * de la sucesión de Fibonacci empezando en 0.
	* - La serie Fibonacci se compone por una sucesión de
	* - números en la que el siguiente siempre es la suma de los dos anteriores.
	* - 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55...
*/

package main

import "fmt"

func main() {
	var num1, num2 int
	num1 = 0
	num2 = 1

	for i := 0; i < 50; i++ {
		fibonacci := num1 + num2
		fmt.Println(num1)
		// fmt.Println(num1, "+", num2, "=", fibonacci)
		num1 = num2
		num2 = fibonacci
	}
}