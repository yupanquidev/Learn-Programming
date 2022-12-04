## Tipos de datos

+ **Bool:** *Almacena `true` o `false`*

  + La función `fmt.Printf` permite imprimir con formato. para eso debe colocar una `%T` para imprimir el tipo de dato y una `%v` para el valor.

+ **String:** *Almacena cadenas de texto.*

  + No es posible usar comillas simples como en otros lenguajes de programación.

+ **Numeric:** *Almacena números enteros.*

  + Tipos de datos numéricos:

	+ `uint`, `int` -> almacenan números enteros.

		+ `uint` (entero sin signo): Almacena solo números enteros positivos (No negativos).	 
			
			+ ```go 
					var a uint = 64		
				```

			+ Números enteros positivos `uint`:

				| Tipo | Rango | Almacenamiento |
				| -- | -- | -- |
				| uint | Depende del OS | 32 o 64 bits |
				| uint8 | 0 a 127 | 8 bits |
				| uint16 | 0 a 2^15-1 | 16 bits |
				| uint32 | 0 a 2^31-1 | 32 bits |
				| uint64 | 0 a 2^63-1 | 64 bits |

		+ `int` (entero): Almacena números enteros.

			+ ```go
					var a int = 64
				```
			
			+ Números enteros `int`:

				| Tipo | Rango | Almacenamiento |
				| -- | -- | -- |
				| int | Depende de Os | 32 o 64 bits |
				| int8 | -128 a 127 | 8 bits |
				| int16 | -2^15 a 2^15-1 | 16 bits |
				| int32 | -2^31 a 2^31-1 | 32 bits |
				| int64 | -2^63 a 2^63-1 | 64 bits |
				| uintptr | Representación entera de una dirección de memoria. |


	+ `float`: Almacenan números decimales.

		+ ```go
				var a float32 = 32
				var b float64 = 64
			```

		+ Números decimales `float`:
			| Tipo | Rango | Almacenamiento |
			| -- | -- | -- |
			| float32 | +/- 1.18e^-38 +/- -3.4e^38 | 32 bits |
			| float64 | +/- 2.23e^-308 +/- -1.8e^308 | 64 bits |


	+ `complex64`: Datos complejos.

		+ ```go
				var a complex64 = 2 + 5i
				c := 10 + 8i
			```
		
		+ Números complejos `complex64`:

			| Tipo | Descripción |
			| -- | -- |
			| Complex64 |  Real e Imaginario, float32 |
			| Complex128 | Real e Imaginario, float64 |

+ Alias:

	+ `byte` alias para `uint8`.

	+ `rune` alias para `int32`, También representa un punto de código Unicode.



### **Casting:**

Permite cambiar temporalmente el tipo de dato de una variable para realizar una operación.

+ El casting no modifica el tipo de dato, el tipo de dato de la variable no cambia.

### **Zero value:** 
Es un valor que va tener por defecto al momento de crear una variable cuando no le asignamos un valor.
	
+ Valores por defecto

	```go
		var a int     // Valor por defecto es = 0
		var b float64 // Valor por defecto es = 0
		var c string  // Valor por defecto es = "  " o "vacio"
		var d bool    // Valor por defecto es = false
	```