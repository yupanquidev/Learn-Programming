package main

func main() {
	/*
		DATOS PRIMITIVOS:
		- Números enteros
			* int = Depende de OS(32 o 64 bits)
			* int8 = 8 bits = -128 a 127
			* int16 = 16bits = -2^15 a 2^15-1
			* int32 = 32bits = -2^31 a 2^31-1
			* int64 = 64bits = -2^63 a 2^63-1
	*/

	/* Optimizar memoria cuando sabemos que el dato simpre va ser positivo.

	- Números enteros positivos
		* uint = Depende del OS (32 o 64 bits)
		* uint8 = 8bits = 0 a 127
		* uint16 = 16bits = 0 a 2^15-1
		* uint32 = 32bits = 0 a 2^31-1
		* uint64 = 64bits = 0 a 2^63-1
	*/

	/*
		- Números decimales
			* float32 = 32 bits = +/- 1.18e^-38 +/- -3.4e^38
			* float64 = 64 bits = +/- 2.23e^-308 +/- -1.8e^308
	*/

	/*
		- Textos y Booleanos
			* string = ""
			* bool = true or false
	*/

	/*
		- Números complejos
			* Complex64 = Real e Imaginario float32
			* Complex128 = Real e Imaginario float64

			* Ejemplo : c:=10 + 8i
	*/
}
