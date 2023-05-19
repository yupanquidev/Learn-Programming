/*
 * Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que sea capaz de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 */

package main

import "fmt"

type Poligono interface {
	Area() float64
}

type Triangle struct {
	base   float64
	height float64
}

type Rectangle struct {
	lenght float64
	width float64
}

type Square struct {
	side float64
}

func (t Triangle) Area() float64 {
	fmt.Print("Area del triángulo: ")
	return (t.base * t.height) / 2
}

func (r Rectangle) Area() float64 {
	fmt.Print("Area del rectángulo: ")
	return r.lenght * r.width
}

func (s Square) Area() float64 {
	fmt.Print("Area del cuadrado: ")
	return s.side * s.side
}

func calculate(p Poligono) {
	fmt.Println(p.Area())
}

func main() {
	myTriangle := Triangle{25, 5}
	myRectangle := Rectangle{3, 7}
	mySquare := Square{3}

	calculate(myTriangle)
	calculate(myRectangle)
	calculate(mySquare)
}
