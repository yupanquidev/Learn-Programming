### Switch
+ La declaración `switch` en Go te permite evaluar una expresión y ejecutar un bloque de código específico en función del valor de la expresión. 

+ A diferencia de otros lenguajes de programación, en Go no es necesario usar la palabra reservada `break` para romper el flujo.

+ La sintaxis básica de la declaración `switch` es la siguiente:

```go
switch expresión {
case valor1:
    // Se ejecuta si la expresión es igual a valor1
case valor2:
    // Se ejecuta si la expresión es igual a valor2
...
default:
    // Se ejecuta si la expresión no es igual a ninguno de los valores especificados
}
```

Ejemplo: 

```go
package main

import "fmt"

func main() {
    dia := 3

    switch dia {
    case 1:
        fmt.Println("Lunes")
    case 2:
        fmt.Println("Martes")
    case 3:
        fmt.Println("Miércoles")
    case 4:
        fmt.Println("Jueves")
    case 5:
        fmt.Println("Viernes")
    case 6:
        fmt.Println("Sábado")
    case 7:
        fmt.Println("Domingo")
    default:
        fmt.Println("Día inválido")
    }
}
```