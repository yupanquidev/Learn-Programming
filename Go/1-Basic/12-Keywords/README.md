### Keywords

+ **Defer**: Utilizada para posponer la ejecución de una instrucción hasta que finalice la función actual. La instrucción se ejecuta justo antes de que la función termine, independientemente de cómo finalice (por ejemplo, si se produce un error o no).

+ Utilidad de defer:

  + se usa para limpiar recursos: cerrar archivos, cerrar conexiones de red, cerrar controladores de bases de datos.

Ejemplo:

```go
func main(){
  hello()
}

func hello() {
  fmt.Println("Hola")
  defer fmt.Println("Adiós")
  fmt.Println("Mundo")
}
```
+ **Panic:** Se utiliza para generar una excepción en tiempo de ejecución. Cuando se encuentra la palabra clave `panic`, se detiene la ejecución del programa y se muestra un mensaje de error.

```go
func main() {
  checkAge(17)
}

func checkAge(age int) {
  if age < 18 {
    panic("Eres demasiado joven para acceder a esta página")
  }
}
```
  + **Recover:** Se utiliza para recuperarse de excepciones generadas con `panic`. Si se intenta utilizar `recover()` fuera de un bloque `defer` o para recuperarse de otro tipo de excepciones, la función devolverá `nil`.

```go
func main() {
  checkAge(17)
}

func checkAge(age int) {
    defer func() {
        if r := recover(); r != nil {
            fmt.Println("Error:", r)
        }
    }()
    if age < 18 {
        panic("Eres demasiado joven para acceder a esta página")
    }
}
```