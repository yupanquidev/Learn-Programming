# Aprendizaje supervisado
# Importacion
import numpy as np
from sklearn import tree

atributos = [[3,0],[5,0],[10,1],[12,1]]
etiquetas = [0,0,1,1]
clasificador = tree.DecisionTreeClassifier() # La utilizacion del algoritmo
train = clasificador.fit(atributos, etiquetas)

res = train.predict([[11,1]])
print(res)

if res[0] == 1:
  print('Pesa como perro y ladra, entonces es un perro...')
else:
  print('Pesa menos que un perro, no ladra, entonces no es un perro...')
