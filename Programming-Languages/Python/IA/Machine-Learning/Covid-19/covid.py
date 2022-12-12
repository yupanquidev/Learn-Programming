# Aprendizaje supervisado
# Importacion
import numpy as np
from sklearn import tree

atributos = [[0,1,1,1],[0,0,1,1],[0,0,0,1],[0,0,0,0],[1,1,1,1],[1,1,1,0]]
etiquetas = [0,1,1,1,1,1]
clasificador = tree.DecisionTreeClassifier()
train = clasificador.fit(atributos, etiquetas)

res = train.predict([[0,12]])
print(res)

if res[0] == 1:
  print('Tiene covid...')
else:
  print('No tiene Covid..')
