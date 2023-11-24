# Enunciado

1. Ecommerce:

+ ✅ Muestra una lista de productos que vienen de un JSON.
+ ✅ Añade un filtro por categoría.
+ ✅ Añade un filtro por precio.

**Nota:** Haz uso de useContext para evitar pasar props innecesarias.

2. Shopping Cart

+ ✅ Haz que se puedan añadir los productos a un carrito.
+ ✅ Haz que se puedan eliminar los productos del carrito.
+ ✅ Haz que se puedan modificar la cantidad de productos del carrito.
+ ✅ Sincroniza los cambios del carrito con la lista de productos.
+ ✅ Guarda en un localStorage el carrito para que se recupere al recargar la página. (da puntos)

**_Hooks usados en este projecto:_**

+ **useId:** Permite generar un identificador unico para cada producto y además funciona con server side rendering.

+ **useContext:** Permite a un componente acceder a ese objeto de contexto y utilizar los valores que contiene. Es una forma de evitar tener que pasar props a través de varios niveles de componentes para que los componentes hijos puedan acceder a los datos.

+ **useReducer:** Permite manejar el estado de una manera escalable, porque se basa en que recibe en una función el estado actual y la acción que tiene que hacer, y a partir del estado actual y de la acción, devuelve el nuevo estado.
