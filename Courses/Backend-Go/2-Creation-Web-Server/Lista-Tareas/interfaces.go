package main

import "fmt"

type perro struct{}
type pez struct{}
type pajaro struct{}

func (perro) caminar() string {
	return "Soy perro y camino"
}

func (pez) nadar() string {
	return "Soy un pez y estoy nadando"
}

func (pajaro) vuela() string {
	return "soy un pajaro y estoy volando"
}

func moverPerro(p perro) {
	fmt.Println(p.caminar())
}
func moverPez(p pez) {
	fmt.Println(p.nadar())
}
func moverPajaro(p pajaro) {
	fmt.Println(p.vuela())
}

func main() {
	p := perro{}
	moverPerro(p)

	pe := pez{}
	moverPez(pe)

	pa := pajaro{}
	moverPajaro(pa)
}
