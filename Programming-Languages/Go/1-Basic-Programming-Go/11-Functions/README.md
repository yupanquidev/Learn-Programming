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



