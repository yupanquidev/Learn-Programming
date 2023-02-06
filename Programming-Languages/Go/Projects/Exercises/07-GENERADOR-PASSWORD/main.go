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
	fmt.Println(passwordGenerator(10, true, true, true))
}

func passwordGenerator(length int, capital, numbers, symbols bool) string {
	characters := make([]int, 26)
	
	for i := 0; i < 26; i++ {
		characters[i] = 97 + i
	}

	if capital {
		for i := 0; i < 26; i++ {
			characters = append(characters, 65+i)
		}
	}

	if numbers {
		for i := 0; i < 10; i++ {
			characters = append(characters, 48+i)
		}
	}

	if symbols {
		for i := 33; i < 97; i++ {
			switch i {
			case 48, 65, 91:
				continue
			default:
				characters = append(characters, i)
			}
		}
	}

	password := ""
	finalLength := 8
	if length >= 8 && length <= 16 {
		finalLength = length
	} else if length > 16 {
		finalLength = 16
	}

	for len(password) < finalLength {
		password += string(rune(characters[rand.Intn(len(characters))]))
	}

	return password
}
