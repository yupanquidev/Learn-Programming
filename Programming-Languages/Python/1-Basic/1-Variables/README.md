## Variables
 Son espacios en memoria que se reservan para almacenar datos que pueden cambiar durante la ejecución del programa.

#### Reglas para nombrar variables en Python
+ Un nombre de variable debe empezar con una letra o el carácter de subrayado.
+ Un nombre de variable no puede empezar con un número.
+ Un nombre de variable sólo puede contener caracteres alfanuméricos y guiones bajos `(Az, 0-9 y _ )`.
+ Los nombres de variables distinguen entre mayúsculas y minúsculas `(edad, Edad y EDAD)` son variables diferentes.

### Declaración y asignación de variables
En Python no es necesario declarar una variable antes de asignarle un valor, simplemente se asigna un valor a una variable y esta se crea automáticamente.

```python
# Declaración y asignación de variables
nombre = 'Juan'
edad = 25
altura = 1.75
```

En Python es posible asignar valores a múltiples variables en una sola línea.

```python
# Declaración y asignación de múltiples variables
nombre, edad, altura = 'Juan', 25, 1.75
```
> **Nota:** Los desarrolladores de Python usa la nomenclatura `snake_case`, es decir, las palabras se separan con guiones bajos y todas las letras son minúsculas.
> **Ejemplo:** `nombre_completo`, `nombres_apellidos`, etc.
>Pero también es posible usar otras nomenclaturas como `camelCase` o `PascalCase`.