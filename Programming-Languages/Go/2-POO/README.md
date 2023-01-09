## Programación orientado a objetos con Go (Golang)

### ¿Qué es la Programación Orientada a Objetos (POO)?

> La programación orientada a objetos (POO) es un enfoque para la programación de software que se basa en el concepto de "objeto". Un objeto es una entidad que combina datos (llamados atributos) y comportamientos (llamados métodos).

### Pilares de la POO

+ **Encapsulamiento:** La encapsulación es el proceso de ocultar los detalles de implementación de un objeto y exponer solo los métodos necesarios para interactuar con él. Esto permite proteger la integridad de los datos y controlar cómo son utilizados.

+ **Herencia:** Es un mecanismo que permite a una clase adquirir los atributos y métodos de otra clase. Esto permite crear una jerarquía de clases y reutilizar código.

> Go no cuenta con herencia (no tiene una jerarquía de tipos).

  + En Go, se puede tener tipos que estén integrados con otros tipos (análogo pero no idéntico a las subclases en otros lenguajes de programación), proveen las interfaces que permiten ir más allá de la herencia.

+ **Polimorfismo:** Permite mandar mensajes sintácticamente iguales a objetos de diferentes tipos que puedan responder a dichos mensajes.

> Go puede realizarlo a través del uso de interfaces.

+ **Abstracción:** Proceso mental de abstracción para aislar un elemento del mundo real o ficticio. Plasmar las características y acciones del objeto en código.

+ En Go, la abstracción se plasma a través de estructuras, en lugar de clases como otros lenguajes de programación.

> En Go, los métodos no son exclusivos de las estructuras, se puede implementar métodos a cualquier tipo definido del lenguaje (a mapas, funciones, arrays, slices, strings, int, etc).