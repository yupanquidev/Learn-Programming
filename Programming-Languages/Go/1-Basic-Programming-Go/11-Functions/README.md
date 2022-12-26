### Funciones

>  Las funciones son bloques de código que pueden ser reutilizados varias veces en un programa. Se pueden utilizar para realizar una tarea específica o para devolver un valor.

1. Función sin parámetros:

```go
func main() {
	hello() // Hello Mario
}

// función sin parámetros
func hello() {
	fmt.Println("Hello Mario")
}
```

2. Función con parámetros por valor y por referencia:

    2.1 **Paso de parámetros por valor:** Reciben una copia del valor del argumento.

    2.2 **Paso de parámetros por referencia:** Reciben una referencia del argumento, esto permite modificar el argumento original.

```go
func main() {
	hello("Mario", "Lagos") 
}

// función con parámetros
func hello(firstName, lastName string) {
	fmt.Printf("Hello %s %s ", firtsName, lastName)
}
```

3. Función con returm:

```go
func main() {
  total := sum(1, 2)
  fmt.Println(total)
}

func sum(num1, num2 int) int {
  return num1 + num2
}
```

```go
func main() {
  text := "HelloWorld"
  minusc, mayusc := convert_(text)
  fmt.Println(minusc, mayusc)
}

// Función multiples returns
func convert(text string) (string, string) {
	// ToLower convierte text en minúscula y ToUppper en mayúscula
	min := strings.ToLower(text)
	may := strings.ToUppper(text)
	return min, may
}
```
4. Manejo de errores:

```go
func main() {
	retult, err := division(10, 0)
	if err != nil {
		fmt.Println("Ocurrió un error: %v", err)
		return
	}

  // Ocurrió un error: no puedes dividir por cero
	fmt.Println(result) 
}

func division(dividendo, divisor int) (int, error) {
	if divisor == 0 {
		return 0, errors.New("no puede dividir por 0")
	}
	return dividendo / divisor, nil
}
```

5. Funciones que reciben y retornan funciones:

  + _Función que recibe una función._
```go
func main() {
	nums := []int{1, 4, 70, 5, 67, 90, 2}
	result := filter(nums, func(num int) bool {
		// Implementación de callback:
		if num <= 19 {
			return true	
		}
		return false
	})
	fmt.Println(result)
}

func filter(nums []int, callback func(int) bool) []int {
	result := []int
	for _, v := range nums {
		if callback(v) {
			result = append(result, v)
		}
	}
	return result
}
```

+ _Función que retorna una función._

```go
func main() {
	x := hello("Pedro")
	fmt.Println(x("Casas"))
}

func hello(name string) func(string) string {
	return func(text string) string {
		return "Hello " + name + " " + text	
	}
}
```

6. Función variádica:  Es una función que puede aceptar un número variable de argumentos. En Go, se pueden declarar funciones variádicas utilizando el símbolo `...` seguido del tipo de dato de los argumentos que se desean recibir.

```go
func main() {
  result := sum(1, 2, 3, 4, 5)
  fmt.Println(result) // imprime 15
}

func sum(numbers ...int) int {
  result := 0
  for _, number := range numbers {
    result += number
  }
  return result
}
```

7. Función anónima: Son funciones que no poseen nombre.

```go
func main() {
  numbers := []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

  evenNumbers := filter(numbers, func(number int) bool {
      return number%2 == 0
  })
  fmt.Println(evenNumbers) // imprime [2 4 6 8 10]
}
```

  + Función anónima autoejecutadas: Son funciones que se declaran y se ejecutan por sí mismas.

```go
func main() {
  func(text string) {
    fmt.Println("Hola,", text)
  }("mundo!")
}
```