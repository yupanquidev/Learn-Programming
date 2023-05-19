package main

import "fmt"

func main() {
	christmasTree()

	for t := 0; t < 4; t++ {
		fmt.Println("        |||||")
	}
}

func christmasTree() {
	n := 10

	for i := 0; i < n; i++ {
		for j := 1; j <= n-i; j++ {
			fmt.Print(" ")
		}
		fmt.Print("*")
		for k := 0; k <= i-1; k++ {
			fmt.Print("|")
		}
		for j := 1; j < i; j++ {
			fmt.Print("|")
		}
		if i > 0 {
			fmt.Print("*")
		}
		fmt.Println()
	}
}
