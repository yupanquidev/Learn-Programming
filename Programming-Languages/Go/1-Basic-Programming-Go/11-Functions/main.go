package main

import (
	"fmt"
	"io/ioutil"
)

func normalFunction(message string) {
	fmt.Println(message)
}

func tripleArgument(a, b int, c string) {
	fmt.Println(a, b, c)
}

func returnValue(a int) int {
	return a * 2
}

func doubleReturn(a int) (c, b int) {
	return a, a * 2
}

func main() {
	normalFunction("Hola mundo")
	tripleArgument(1, 2, "Hola")

	value := returnValue(2)
	fmt.Println("Value:", value)

	value1, _ := doubleReturn(2)
	fmt.Println("Value1 :", value1)

	// Manejo de errores
	content, err := ioutil.ReadFile("./things.txt")
	if err != nil {
		fmt.Printf("Ocurrio un problema: %v", err)
		return
	}

	fmt.Println(content)

	/* else {
		fmt.Println(string(content))
	} */
}
