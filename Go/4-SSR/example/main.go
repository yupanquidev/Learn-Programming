package main

import (
	"log"
	"os"
	"text/template"
)

func main() {
	tpl := "Hello, mundo!"
	t, err := template.New("example").Parse(tpl)
	if err != nil {
		log.Fatal(err)
	}

	err = t.Execute(os.Stdout, nil)
	if err != nil {
		log.Fatal(err)
	}
}
