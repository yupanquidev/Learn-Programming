/*
* Crear un programa que simule el juego de piedra, papel o tijera
* - Piedra vs Papel: Papel gana
* - Piedra vs Tijera: Piedra gana
* - Papel vs Tijera: Tijera gana
* - Si ambos playeres eligen lo mismo, es un empate.
  - 1 = Piedra
	- 2 = Papel
	- 3 = Tijera
*/

package main

import (
	"fmt"
	"math/rand"
)

func random(min, max int) int {
	return rand.Intn(max-min+1) + min
}

func choice(play int) string {
	result := ""
	if play == 1 {
		result = "Piedra 🪨"
	} else if play == 2 {
		result = "Papel 🧻"
	} else if play == 3 {
		result = "Tijera ✂️"
	} else {
		result = "Opción no válida 🔴"
	}
	return result
}

func main() {
	fmt.Println("Juego de Piedra, Papel o Tijera")
	fmt.Println(" 1 = Piedra, 2 = Papel ó 3 = Tijera")
	player, pc := 0, 0
	wins, losses, ties := 0, 0, 0

	for wins < 3 && losses < 3 {
		pc = random(1, 3)

		fmt.Print("\nElige una opción: ")
		fmt.Scanln(&player)

		fmt.Println("Juagador elige: ", choice(player))
		fmt.Println("PC elige: ", choice(pc))

		if player == pc {
			ties++
		} else if player == 1 && pc == 3 {
			wins++
		} else if player == 2 && pc == 1 {
			wins++
		} else if player == 3 && pc == 2 {
			wins++
		} else {
			losses++
		}
	}
	fmt.Println("\nGanadas 🟢: ", wins, " Perdidas 🔴: ", losses, " Empates 🟡: ", ties)
}
