/*
 * Escribe un programa que muestre cómo transcurre un juego de tenis y quién lo ha ganado.
 * El programa recibirá una secuencia formada por "P1" (Player 1) o "P2" (Player 2), según quien
 * gane cada punto del juego.
 *
 * - Las puntuaciones de un juego son "Love" (cero), 15, 30, 40, "Deuce" (empate), ventaja.
 * - Ante la secuencia [P1, P1, P2, P2, P1, P2, P1, P1], el programa mostraría lo siguiente:
 *   15 - Love
 *   30 - Love
 *   30 - 15
 *   30 - 30
 *   40 - 30
 *   Deuce
 *   Ventaja P1
 *   Ha ganado el P1
 * - Si quieres, puedes controlar errores en la entrada de datos.
 * - Consulta las reglas del juego si tienes dudas sobre el sistema de puntos.
*/

package main

import "fmt"

type Player int

const (
	p1 Player = iota + 1
	p2
)

func absoluteValue(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func tenisGame(points []Player) {
	game := []string{"Love", "15", "30", "40"}
	p1Points, p2Points := 0, 0
	finished, error := false, false
	//finished := false
	//error := false

	for _, Player := range points {
		error = finished

		switch Player {
		case p1:
			p1Points++
		case p2:
			p2Points++
		}

		if p1Points >= 3 && p2Points >= 3 {
			if !finished && absoluteValue(p1Points-p2Points) <= 1 {
				if p1Points == p2Points {
					fmt.Println("Deuce")
				} else if p1Points > p2Points {
					fmt.Println("Ventaja P1")
				} else {
					fmt.Println("Ventaja P2")
				}
			} else {
				finished = true
			}
		} else {
			if p1Points < 4 && p2Points < 4 {
				fmt.Printf("%s - %s\n", game[p1Points], game[p2Points])
			} else {
				finished = true
			}
		}
	}

	if error || !finished {
		fmt.Println("Los puntos jugados no son correctos")
	} else if p1Points > p2Points {
		fmt.Println("Ha ganado el P1")
	} else {
		fmt.Println("Ha ganado el P2")
	}
}

func main() {
	tenisGame([]Player{p1, p1, p2, p2, p1, p2, p1, p1})
}

// iota -> Palabra reservada, que se utiliza en las declaraciones de enumeraciones.
// Se utiliza para crear una serie de constantes numéricas consecutivas en una enumeración.
// Cada vez que se encuentra iota en una declaración de constante, su valor se incrementa automáticamente en 1.
