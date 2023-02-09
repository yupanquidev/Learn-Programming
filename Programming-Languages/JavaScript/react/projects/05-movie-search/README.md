## **Enunciado:**

### **Crea una aplicación para buscar películas**

#### **_API a usar:_**

> + https://www.omdbapi.com/
> + API_KEY: f76a9f7b
> + https://www.omdbapi.com/?i=tt3896198&apikey=f76a9f7b&s=Avengers

#### **_Requerimientos:_**

+ ✅ Necesita mostrar un input para buscar la película y un botón para buscar.

+ ✅ Lista las películas y muestra el título, año y poster.

+ ✅ Que el formulario funcione.

+ ✅ Haz que las películas se muestren en un grid responsive.

+ ✅ Hacer el fetching de datos a la API

#### **_Primera iteración:_**

+ ✅ Evitar que se haga la misma búsqueda dos veces seguidas.

+ ✅ Haz que la búsqueda se haga automáticamente al escribir.

+ ✅ Evita que se haga la búsqueda continuamente al escribir (debounce)


### **Hooks aprendidos en este proyecto:**

+ ✏️ **_useRef:_** Permite crear una referencia mutable que persite durante todo el ciclo de vida de un componente.

  + Valor que persiste entre renders.
  
  + Útil para guardar cualquier valor que puedas mutar, como un identificador, un elemento del DOM, un contador, etc. Y que cada vez que cambia no vuelva a renderizar el componente.

