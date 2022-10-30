package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

type calculate struct {
}

func (calculate) operate(entrada, operador string) int {
	entradaLimpia := strings.Split(entrada, operador)
	operador1 := parsear(entradaLimpia[0])
	operador2 := parsear(entradaLimpia[1])

	switch operador {
	case "+":
		fmt.Println(operador1 + operador2)
		return operador1 + operador2
	case "-":
		fmt.Println(operador1 - operador2)
		return operador1 - operador2
	case "*":
		fmt.Println(operador1 * operador2)
		return operador1 * operador2
	case "/":
		fmt.Println(operador1 / operador2)
		return operador1 / operador2
	default:
		fmt.Println(operador, "No esta soprtado")
		return 0
	}
}

func parsear(entrada string) int {
	operador, _ := strconv.Atoi(entrada)
	return operador
}

func readInput() string {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	return scanner.Text()
}

func main() {
	entrada := readInput()
	operador := readInput()
	c := calculate{}
	fmt.Println(c.operate(entrada, operador))
}
