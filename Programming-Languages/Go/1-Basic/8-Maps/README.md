### Maps

+ Es una estructura de datos que permite almacenar pares clave-valor. Los mapas son útiles para almacenar y acceder a datos de manera rápida utilizando claves únicas.

Ejemplo: 

```go
  // 1 - Crear un map
	animals := make(map[string]string)
	animals["cat"] = "🐈‍⬛"
	animals["dog"] = "🦮"

	fmt.Println("Animales: ", animals)

	// 2- Crear un map
	fruits := map[string]string{
		"apple":  "🍏",
		"banana": "🍌",
	}

	fmt.Println("Frutas: ", fruits)
```