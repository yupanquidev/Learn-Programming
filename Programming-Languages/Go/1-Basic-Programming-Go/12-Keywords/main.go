package main

import (
	"fmt"
	"os"
)

func main() {
	// Uso de los keywords defer, break y continue

	// Defer = ejecuta la última function
	/* 	defer fmt.Println("Mundo")
	   	fmt.Println("Hola")

	   	// Continue y Break
	   	for i := 0; i < 10; i++ {
	   		fmt.Println(i)

	   		// Continue
	   		if i == 2 {
	   			fmt.Println("Es 2")
	   			continue
	   		}

	   		// Break
	   		if i == 8 {
	   			fmt.Println("Break")
	   			break
	   		}
	   	} */

	file, err := os.Create("hello.txt")
	if err != nil {
		fmt.Printf("Ocurrió un error al crear el archivo %v", err)
		return
	}

	// Evita colocar muchas veces "file.Close()" y olvidarlo
	defer file.Close()

	_, err = file.Write([]byte("Hello All"))
	if err != nil {
		// file.Close()
		fmt.Printf("Ocurrió un error al escribir el archivo %v", err)
		return
	}
	// file.Close()
}
