### Structures

+ Una estructura en Go es un tipo de datos que permite almacenar un conjunto de campos de diferentes tipos de datos.

+ Las estructuras se utilizan a menudo para representar entidades con atributos múltiples, como una persona con nombre, edad y dirección.

+ Para declarar una estructura en Go, debes utilizar la palabra clave "type" seguida del nombre de la estructura y la lista de campos entre llaves. 

Ejemplo:

```go
// Crear estructura
  type Person struct {
  Name string
  Age int
  Address string
}

// Crear una instancia de una estructura
p := Person{
  Name: "John",
  Age: 30,
  Address: "New York",
}
```