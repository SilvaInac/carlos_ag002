from mysql_bd import connection_db
from sklearn.neural_network import MLPClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
import numpy as np


def train_mlp():
    frame = connection_db.get_data()
    new_frame = frame.drop('class',axis=1)
    y = frame['class'].values
    X = new_frame.drop('id',axis=1).values
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    mlp = MLPClassifier(hidden_layer_sizes=(9, 9), max_iter=1000, random_state=42)
    mlp.fit(X_train, y_train)

    y_pred = mlp.predict(X_test)    

    accuracy = accuracy_score(y_test, y_pred)
    print("Acurácia:", accuracy)
    # Carregar os novos dados para teste
    new_sample = np.array([[5, 2, 7, 2, 1, 3, 1, 2, 1]])
    new_sample2 = np.array([[4, 3, 7, 1, 1, 2, 2, 4, 1]])

    # Fazer previsões com o modelo
    predicted_class = mlp.predict(new_sample)
    predicted_class2 = mlp.predict(new_sample2)

    print("Classe prevista:", predicted_class)
    print("Classe prevista2:", predicted_class2)

train_mlp()