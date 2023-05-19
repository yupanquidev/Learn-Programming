package main

import "fmt"

// Crear una estructura
type teacher struct {
	Name    string
	Course  string
	Country string
	Age     int
}

func main() {
	myTeacher := teacher{
		Name:    "Julio",
		Course:  "Math",
		Country: "Japan",
		Age:     25,
	}

	// Crear instancias
	otherTeacher := teacher{"Pedro", "Chemistry", "Bolivia", 29}

	fmt.Println(myTeacher)
	fmt.Println(otherTeacher)

	// Para acceder a un elemento
	fmt.Println(myTeacher.Name)
	fmt.Println(otherTeacher.Age)

	// Crear punteros a estructuras
	pointers := &myTeacher
	// (*pointers).Name = "Juan"
	pointers.Name = "Juan"
	fmt.Printf("%+v\n", myTeacher)
	fmt.Printf("%+v\n", pointers)
}
