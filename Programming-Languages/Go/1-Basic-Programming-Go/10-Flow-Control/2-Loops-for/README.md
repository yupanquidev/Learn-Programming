### For


+ El bucle `for` en Go es una estructura de control que permite ejecutar un bloque de código varias veces de forma iterativa. 

+ Solo existe un solo ciclo iterativo en Go `for`.

Sintaxis:

+ `for` clásico:

```go
	for i := 0; i <= 5; i++ {
		fmt.Println(i)
	}
```

+ `for` continuo (`while`):

```go
	counter := 0
	for counter <= 5 {
		fmt.Println(counter)
		counter++
	}
```

+ `for` forever: Se usa para procesos que necesitan ser escuchados permanentemente como sockets u otras conexiones.

```go
counterForever := 0
	for {
		fmt.Println(counterForever)
		counterForever++
	}
```

+ `for` como `foreach`:

```go
nums := []uint8{2, 4, 6, 8}
for range nums {
	fmt.Println("Caballo")
}
```