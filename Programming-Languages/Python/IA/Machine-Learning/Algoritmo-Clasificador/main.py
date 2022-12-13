import tensorflow as tf
import tensorflow_dataset as tfds

# Descargar set de datos de entrenamiento Zalando
datos, metadatos = tfds.load('fashion_nmits', )

# Separar entrenamiento de pruebas
datos_entrenamiento, datos_prueba = datos['train'], datos['tets']

# Nombres de los datos
nombres_clases = metadatos.features['label'].names

# Funcion de normalizacion (0-255) -> (0-1)
Hace que la red