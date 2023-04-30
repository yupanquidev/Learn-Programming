package main

import "fmt"

// Estructura de cursos
type Course struct {
	Name   string
	Price  float64
	IsFree bool

	// Estructuras compuestas
	UserIDs []uint
	Classes map[uint]string
}

func (c *Course) ChangePrice(price float64) {
	c.Price = price
}

// Definición de métodos
func (c *Course) PrintClasses() {
	text := "Las clases son: "
	for _, class := range c.Classes {
		text += class + ", "
	}

	fmt.Println(text[:len(text)-2])
}
