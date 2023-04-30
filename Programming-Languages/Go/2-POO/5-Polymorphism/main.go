package main

import "fmt"

type Greeter interface {
	Greet()
}

type Byer interface {
	Bye()
}

type GreeterByer interface {
	Greeter
	Byer
}

type People struct {
	Name string
}

func (p People) Greet() {
	fmt.Println("Hi, I'm", p.Name)
}

func (p People) Bye() {
	fmt.Println("Bye, I'm", p.Name)
}

type Text string

func (t Text) Greet() {
	fmt.Println("Hello", t)
}

func (t Text) Bye() {
	fmt.Println("Bye", t)
}

func All(gbs ...GreeterByer) {
	for _, gb := range gbs {
		gb.Greet()
		gb.Bye()
	}
}

func main() {
	var g Greeter = People{Name: "John"}
	var t Greeter = Text("World")
	p := People{Name: "Mary"}

	g.Greet()
	t.Greet()
	p.Greet()
	All(p)
}
