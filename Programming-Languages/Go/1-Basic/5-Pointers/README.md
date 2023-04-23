### Punteros

Los punteros son una característica de Go que permiten almacenar la dirección de memoria de una variable en lugar del valor de la variable en sí. 

#### Operador de dirección de memoria: ampersand (&)
+ Accede a la dirección de memoria de una variable. 
  + Sintaxis: `&<nombre_de_la_variable>`.

#### Operador de Derreferenciación o Indirección
+ Accede al valor almacenado en la dirección de memoria donde apunta un puntero. 
  + Sintaxis: `*<nombre_del_puntero>`.

Ejemplo: 

```go
  var p *string
  p = &fruit
```