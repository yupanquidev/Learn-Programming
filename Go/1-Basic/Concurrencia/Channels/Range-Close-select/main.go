package main

import "fmt"

func message(text string, c chan string) {
	c <- text
}

func main() {
	c := make(chan string, 2)

	c <- "message1"
	c <- "message2"

	fmt.Println(len(c), cap(c))

	// Range y Close

	close(c)
	// c <- "message3"

	for message := range c {
		fmt.Println(message)
	}

	// Select
	email1 := make(chan string)
	email2 := make(chan string)
	go message("Mensaje 1", email1)
	go message("Mensaje 2", email2)

	for i := 0; i < 2; i++ {
		select {
		case m1 := <-email1:
			fmt.Println("Email Recibido de email1", m1)
		case m2 := <-email2:
			fmt.Println("Email Recibido de email2", m2)
		}
	}
}
