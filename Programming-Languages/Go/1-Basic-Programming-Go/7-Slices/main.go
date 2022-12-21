package main

import "fmt"

func main() {
	// Declaración de Slices
	set := [7]string{"🦁", "🐎", "🐄", "🐇", "🐦", "🛩️", "🛬"}
	animals := set[0:4] // Apuntamos
	fly := set[4:7]
	fly[0] = "🦜" // Indice cero de voladores, se modifican .

	fmt.Println("Array: ", set)
	fmt.Println("Animale: ", animals)
	fmt.Println("Voladores: ", fly)
	fmt.Println("Se imprimen todo los elementos: ", set[:])

	// Los Slices son mutables
	slice := []int{0, 1, 2, 3, 4, 5, 6}
	fmt.Println("Todos lo elementos: ", slice, "\nTamaño: ", len(slice), "\nCapacidad:", cap(slice))

	// Métodos en el slice
	fmt.Println(slice[0])
	fmt.Println(slice[:3])
	fmt.Println(slice[2:4])
	fmt.Println(slice[4:])

	// Append, para agregar mas elementos
	slice = append(slice, 7)
	fmt.Println(slice)

	// Append nueva list
	newSlice := []int{8, 9, 10}
	slice = append(slice, newSlice...)
	fmt.Println(slice)
}
