### Slices

+ Un slice es una estructura de datos en Go que permite almacenar una secuencia de elementos del mismo tipo. 

  + A diferencia de los arrays, los slices no tienen un tamaño fijo y pueden crecer o reducirse dinámicamente durante la ejecución del programa.

  + Slice no poseen datos, son apuntadores a un Array.

  + Para crear un slice, puedes utilizar la función `make`.

	+ El ultimo elemento del rango del slice es excluyente.


Ejemplo: 
```go
  // Declaración de Slices
	set := [7]string{"🦁", "🐎", "🐄", "🐇", "🐦", "🛩️", "🛬"}
	animals := set[0:4] // Apuntamos los indices
	fly := set[4:7]
	fly[0] = "🦜" // Índice cero de voladores, se modifican .

	fmt.Println("Array: ", set)
	fmt.Println("Animale: ", animals)
	fmt.Println("Voladores: ", fly)
```



+ Otras sintaxis:

	+ `name_array[ : indice_final]`: indice_final]: El índice inicial es el 0.
	+ `name_array[indice_inicial : ]`: El índice final es el tamaño del array.
	+ ` name_array[ : ]`: Toma todos los elementos del array.

+ Tamaño de un slice: La función para obtenerla es `len()`.

+ Capacidad de un slice: Es el número de elementos del array, donde está apuntando el slice a partir del índice donde se creó el slice. La función es `cap()`.

+ Agregar elementos: La función que permite esto es `append(slice, elementos_agregar)`.