# Introducción
# ¿Qué es Docker?
**[Docker](https://www.docker.com/)** es una plataforma abierta para desarrollar, enviar y ejecutar aplicaciones. Que permite **separar las aplicaciones de su infraestructura**, y que facilita la **entrega rápida de software**. Con Docker, es posible administrar su infraestructura de la misma manera que gestiona las aplicaciones. Al aprovechar las **metodologías de Docker** para enviar, probar e implementar código rápidamente, se puede **reducir significativamente el tiempo** entre escribir código y ejecutarlo en producción.
## Plataforma Docker
Docker proporciona la capacidad de **empaquetar y ejecutar una aplicación** en un entorno de **aislamiento flexible** llamado contenedor. El **aislamiento** y la **seguridad** permiten ejecutar múltiples contenedores simultáneamente en un host determinado. Los contenedores son **livianos** y contienen todo lo necesario para ejecutar la aplicación, por lo que no necesita depender de lo que está instalado actualmente en el host. Puedes compartir fácilmente los contenedores mientras trabaja y asegurarse que todas las personas con las que comparte obtengan el **mismo contenedor** que funciona de la misma manera.

- Docker proporciona herramientas y una plataforma para administrar el ciclo de vida de sus contenedores:
  - **Desarrolla** tu aplicación y sus componentes de soporte utilizando contenedores.
  - **El contenedor** se convierte en la unidad para distribuir y probar tu aplicación.
  - **Cuando estés listo**, despliega tu aplicación en tu entorno de producción, ya sea como un contenedor o como un servicio orquestado.

## ¿Para qué puedo usar Docker?
### **Entrega rápida y consistente tus aplicaciones**
Docker **optimiza** el ciclo de vida de desarrollo al permitir a los desarrolladores trabajar en **entornos estandarizados** utilizando **contenedores locales** que proporcionan tus aplicaciones y servicios. Los **contenedores** son ideales para flujos de trabajo de **integración continua** y **entrega continua** (CI/CD).
### Despliegue receptivo y escalado
La plataforma basada en contenedores de Docker que permite cargas de trabajo altamente portátiles. Los contenedores de Docker pueden ejecutarse en la **cumputadora local de un desarrollador**, en máquinas físicas o virtuales en un centro de datos, en proveedores de nube o en una combinación de entornos.

La **portabilidad** y la **ligereza** de Docker también facilitan la administraciín dinámica de cargas de trabajo, escalando aplicaciones y servicios según las necesidades del negocio, en tiempo casi real.
### Ejecutando más cargas de trabajo en el mismo hardware
Docker es **ligero** y **rápido**. Proporciona una alternativa **viable** y **rentable** a las máquinas virtuales basadas en hipervisor, para que puedas utilizar más capacidad de tu servidor y alcanzar tus objetivos empresariales. Docker es perfecto para entornos de alta densidad y despliegues **pequeños** y **medianos**, donde necesitas hacer más **con menos recursos**.

## Arquitectura de Docker
Docker utiliza una arquitectura `cliente-servidor`. El _**cliente**_ de Docker se comunica con el _**demonio**_ de Docker, que se encarga de realizar las tareas pesadas de construir, ejecutar y distribuir los contenedores de Docker. El cliente y el demonio de Docker pueden _**ejecutarse**_ en el mismo sistema o puedes conectar un cliente de Docker a un demonio de Docker remoto. El cliente y el demonio de Docker se comunican mediante una API REST, a través de sockets UNIX o una interfaz de red. Otro cliente de Docker es Docker Compose, que te permite trabajar con aplicaciones que constan de un conjunto de contenedores.

## ¿Por qué Docker?
**[Docker](https://www.docker.com/)** es una herramienta popular para desarrolladores, administradores de sistemas e ingenieros de operaciones. Lo utilizan empresas de todos los tamaños para crear, implementar y administrar aplicaciones.

![Alt text](assets/Architecture.svg)

### Algunas ventajas de usar Docker:

- **Portabilidad**
- **Eficiencia**
- **Seguridad**
- **Colaboración** 
- **Velocidad**
- **Agilidad**
- **Escalabilidad**
- **Versatilidad**

### Diferencias entre Docker y una máquina virtual

_Los **contenedores** de **Docker** comparten el sistema operativo host y son más ligeros y eficientes que las máquinas virtuales, que ejecutan su propio sistema operativo._

| **Características** | **Docker** | **Máquinas Virtuales** |
| :--: | :--: | :--: |
| Sistema | Comparte el sistema operativo host | Ejecuta su propio sistema operativo |
| Eficiencia | Más liviano y eficiente | Más pesado y requiere más recursos |
| Tiempo de arranque | Rápido | Lento |
| Uso de recursos | Eficiente | Menos eficiente |
| Aislamiento | Los contenedores están aislados entre sí | Las máquinas virtuales están aisladas entre sí y del sistema operativo host |
| Portabilidad | Portátil | No portátil |

## Comandos básicos de Docker:

- **`docker pull`:** Descarga una imagen o un repositorio desde un registro.
  - Ejemplo: `docker pull nombre_imagen`
- `docker run` - Ejecuta un comando en un nuevo contenedor.
- `docker start` - Inicia uno o más contenedores detenidos.
- **docker stop** - Detiene uno o más contenedores en ejecución.
- **docker build** - Crea una imagen a partir de un Dockerfile.
- **docker push** - Carga una imagen o un repositorio a un registro.
- **docker export** - Exporta un contenedor como un archivo tar.
- **docker exec** - Ejecuta un comando en un contenedor en ejecución.
- **docker search** - Busca una imagen de Docker Hub.
- **docker attach** - Conecta la entrada, la salida y el error estándar.
- **docker commit** - Crea una nueva imagen a partir de los cambios de un contenedor.
- **docker cp** - Copia archivos o carpetas entre un contenedor y el sistema local.
- **docker rm** - Elimina uno o más contenedores.
- **docker rmi** - Elimina una o más imágenes.
- **docker ps** - Lista los contenedores en ejecución.
- **docker images** - Lista las imágenes disponibles localmente.
- **docker info** - Muestra la información del sistema Docker.
- **docker version** - Muestra la versión de Docker.

## Glosario
- **`Docker`:** Una plataforma de código abierto que permite desarrollar, enviar y ejecutar aplicaciones en contenedores.
- **`Contenedor - Container`:** Un entorno aislado y ligero que contiene una aplicación y todas sus dependencias necesarias para ejecutarse de manera independiente.
- **`Imagen - Image`:** Un paquete de solo lectura que incluye todo lo necesario para ejecutar una aplicación, incluyendo el código, las bibliotecas, las herramientas y las configuraciones.

