from sklearn.neural_network import MLPClassifier
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
import numpy as np


# Gerar valores aleatórios para os atributos da flor
sepal_length = np.random.uniform(4.0, 8.0)
sepal_width = np.random.uniform(2.0, 4.5)
petal_length = np.random.uniform(1.0, 7.0)
petal_width = np.random.uniform(0.1, 2.5)

# Criar um array com os valores dos atributos
new_iris = np.array([[sepal_length, sepal_width, petal_length, petal_width]])

print("Nova amostra de Iris:")
print(new_iris)

iris = load_iris()
X = iris.data
y = iris.target

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

mlp = MLPClassifier(hidden_layer_sizes=(10, 10), max_iter=1000, random_state=42)
mlp.fit(X_train, y_train)

y_pred = mlp.predict(X_test)

accuracy = accuracy_score(y_test, y_pred)
print("Acurácia:", accuracy)

new_iris_pred = mlp.predict(new_iris)
print("Rótulo previsto para a nova amostra de Iris:", new_iris_pred)