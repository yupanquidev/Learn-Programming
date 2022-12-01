package mypackage

import "fmt"

// CarPublic Car con acceso publico
type CarPublic struct {
	Brand string
	Year  int
}

type carPrivate struct {
	brand string
	year  int
}

// PrintMessage imprimir mensaje
func PrintMessage(text string) {
	fmt.Println(text)
}
func PrintMessage1(text string) {
	fmt.Println(text)
}
