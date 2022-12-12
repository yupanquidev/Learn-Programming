import numpy as np
from sklearn import tree

atributos = [[1000,2000],[1500,2500],[2000,3000],[2500,500],[3000,1000],[3500,1500]]
etiquetas = [0,0,0,1,1,1]
clasificador = tree.DecisionTreeClassifier()
train = clasificador.fit(atributos, etiquetas)

res = train.predict([[1000,100]])
print(res)

if res[0] == 1:
  print('Prestamo...')
else:
  print('No prestamo')
