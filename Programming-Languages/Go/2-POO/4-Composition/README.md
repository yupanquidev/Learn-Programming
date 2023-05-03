## Composición en lugar de herencia

### ¿Por qué no hay herencia en Go?

Esto se debe a una elección de diseño intencional de los creadores de Go.

#### Herencia vs Composición
- La herencia tiene una relación de "es un" y la composición "**tiene/usa**".
- La herencia simple tiene relación 1 a 1, en la composición los objetos relacionados es de 1 a muchos.
- La herencia puede tener muchos niveles de jerarquía de tipos, en la composición **no hay jerarquía, hay relaciones**, donde se puede aplicar el **principio de responsabilidad única** y **la inyección de dependencias**.
- En la herencia, hay polimorfismo a través de la herencia, en la composición **hay polimorfismo a través de interfaces**.
- Se **facilita los test** cuando se usa composición, ya que, si se usa inyección de dependencias y este recibe una interfaz, hay muchas posibilidades para realizar tests unitarios fácilmente. En la herencia es más difícil de hacer y de gestionar.

#### Otras características con ventajas en Go
- Los métodos pueden estar en diferentes tipos declarados, no es exclusivo de las estructuras.
- Tiene Interfaces implícitas, la cual no necesita usar la palabra reservada `implements`. Un tipo puede satisfacer múltiples interfaces y no se necesita especificar dentro del tipo o la estructura.
- Permite la incrustación de campos, permite integrar tipos en otros tipos (análogo a subclases pero no idéntico).
