import tensorflow as tf
import tensorflow_datasets as tfds

# Descargar set de datos de entrenamiento Zalando
datos, metadatos = tfds.load('fashion_mnist', as_supervised=True, with_info=True)
