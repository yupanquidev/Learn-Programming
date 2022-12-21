### Arrays

+ Un array es una estructura de datos en Go que permite almacenar una secuencia de elementos del mismo tipo. 

  + Para declarar un array en Go, debes especificar el tipo de datos de los elementos y el número de elementos que deseas almacenar.

+ Es importante tener en cuenta que un array en Go tiene un tamaño fijo y no puede crecer ni reducirse una vez se ha creado. 

  + Si necesitas una estructura de datos que pueda cambiar de tamaño durante la ejecución del programa, puedes utilizar un slice en su lugar.

Ejemplo:
 
```go
  // Declaración de un array
	var food [3]string

	// Endicamos el indice donde queremos almacenar el valor
	food[0] = "🍔"
	food[1] = "🍕"
	food[2] = "🌭"
	fmt.Println("Comidas: ", food)

	// Array literales
	fruit := [3]string{"🍏", "🍌", "🍊"}
	fmt.Println("Frutas: ", fruit)
```