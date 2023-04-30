package course

import "fmt"

// Estructura de cursos
type course struct {
	Name   string
	Price  float64
	IsFree bool

	// Estructuras compuestas
	UserIDs []uint
	Classes map[uint]string
}

// Función constructora
func New(name string, price float64, isFree bool) *course {
	if price == 0 {
		price = 30
	}

	return &course{
		Name:   name,
		Price:  price,
		IsFree: isFree,
	}
}

// De esta forma se encapsula el campo Price
func (c *course) changePrice(price float64) {
	c.Price = price
}

// Definición de métodos
func (c *course) PrintClasses() {
	text := "Las clases son: "
	for _, class := range c.Classes {
		text += class + ", "
	}

	fmt.Println(text[:len(text)-2])
}
