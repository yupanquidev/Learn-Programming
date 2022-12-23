### Condicional `if`

+ Condicional `if` es el más básico y se utiliza para evaluar si se cumple o no una determinada condición.

+ También es posible agregar una cláusula `else` para especificar qué debe hacer el programa si no se cumple la condición:

Sintaxis de la condición `if`:

```go
  if condicion1 {
    // Se ejecuta si la condicion1 es verdadera
  } else if condicion2 {
    // Se ejecuta si la condicion1 es falsa y condicion2 es verdadera
  } else {
    // Se ejecuta si la condicion1 y la condicion2 son falsas
  }
```

Ejemplo:

```go
package main

import "fmt"

func main() {
    edad := 17

    if edad >= 18 {
        fmt.Println("Mayor de edad")
    } else if edad >= 13 {
        fmt.Println("Adolescente")
    } else {
        fmt.Println("Niño")
    }
}
```