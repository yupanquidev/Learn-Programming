# Librería para leer y manipular los datos
import numpy as np
import pandas as pd

# Librerías para machine learning
import sklearn
from sklearn.model_selection import train_test_split

# Librerías para los gráficos
import matplotlib.pyplot as plt
from matplotlib import style
style.use("ggplot")

# Los datos se cargaran en variable
df_original = pd.read_csv("train.csv")

# Veamos que info hay ....
df_original.head(3)

# drop algunas columnas -> según las características que son relevantes
df_dropped_features = df_original(["PassengerId", "Name", "Embarked", "Parch", "Cabin"], axis = 1)

# Veamos que info hay...
df_dropped_features.head(3)

# Veamos los diferentes valores del feature sex
print("Sexo: ", df_dropped_features["Sex"].unique())

# Con get_dummies de panda, se categoriza los diferentes features
df_categorized = pd.get_dummies(df_dropped_features)

# Veamos el info..
df_categorized.head(3)

# Veamos más..
df_categorized.describe()

# Copia de todo el dataset
df_cleaned = df_categorized.copy()

# adiós variables NAN para edad -> Filtrar datos que no son válidos
df_cleaned["Age"] = df_categorized.dropna(axis=1)
