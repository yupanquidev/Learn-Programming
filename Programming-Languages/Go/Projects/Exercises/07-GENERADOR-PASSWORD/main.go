/*
	- Escribe un programa que sea capaz de generar contraseñas de forma aleatoria.
*/

package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano())
	fmt.Println(passwordGenerator(10))
}

func passwordGenerator(length int) string {

	var letters = []rune("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
	var characters = []rune("1234567890@(){}[]-_.;,:*¿¡?=/&%$#!\\")

	charSet := append(letters, characters...)

	password := make([]rune, length)
	for i := range password {
		password[i] = charSet[rand.Intn(len(charSet))]
	}
	return string(password)
}
