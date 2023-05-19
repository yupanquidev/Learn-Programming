## Métodos
En Go son funciones con un argumento receptor. Ese argumento se especifica enter parentesis entre la palabra reservada `func` y el nombre de la función.

```go
  // Definición de un método
  func (c Course)  PrintClasses() {
    text := "Las clases son: "
    for _, class := range c.Classes {
      text += class + ", "
    }

    fmt.Println(text[:len(text)-2])
  }
```