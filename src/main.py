from mysql_bd import connection_db
from sklearn.neural_network import MLPClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from sklearn.metrics import top_k_accuracy_score
import numpy as np


def code_data():
    # Categorizar a age em faixas

    age = input("Digite sua idade: ")
    age = int(age)
    if age >= 10 and age <= 19:
        age_c = 1
    elif age >= 20 and age <= 29:
        age_c = 2
    elif age >= 30 and age <= 39:
        age_c = 3
    elif age >= 40 and age <= 49:
        age_c = 4
    elif age >= 50 and age <= 59:
        age_c = 5
    elif age >= 60 and age <= 69:
        age_c = 6
    elif age >= 70 and age <= 79:
        age_c = 7
    elif age >= 80 and age <= 89:
        age_c = 8
    elif age >= 90 and age <= 99:
        age_c = 9

    menopause = input("Voce está na menopausa? (yes ou no): ")
    if menopause == "yes" and age >= 40:
        menopause_c =1
    elif menopause == "yes" and age < 40:
        menopause_c = 2
    elif menopause == "no":
        menopause_c = 3

    tumor_size = input("Digite o tamanho do tumor (em mm): ")
    tumor_size = int(tumor_size)
    if tumor_size >= 1 and tumor_size <= 4:
        tumor_size_c = 1
    elif tumor_size >= 5 and tumor_size <= 9:
        tumor_size_c = 2
    elif tumor_size >= 10 and tumor_size <= 14:
        tumor_size_c = 3
    elif tumor_size >= 15 and tumor_size <= 19:
        tumor_size_c = 4
    elif tumor_size >= 20 and tumor_size <= 24:
        tumor_size_c = 5
    elif tumor_size >= 25 and tumor_size <= 29:
        tumor_size_c = 6
    elif tumor_size >= 30 and tumor_size <= 34:
        tumor_size_c = 7
    elif tumor_size >= 35 and tumor_size <= 39:
        tumor_size_c = 8
    elif tumor_size >= 40 and tumor_size <= 44:
        tumor_size_c = 9
    elif tumor_size >= 45 and tumor_size <= 49:
        tumor_size_c = 10
    elif tumor_size >= 50 and tumor_size <= 54:
        tumor_size_c = 11
    elif tumor_size >= 55 and tumor_size <= 59:
        tumor_size_c = 12

    
    inv_nodes = input("Digite o numero de linfonodos axilares: ")
    inv_nodes = int(inv_nodes)
    if inv_nodes >= 0 and inv_nodes <= 2:
        inv_nodes_c = 1
    elif inv_nodes >= 3 and inv_nodes <= 5:
        inv_nodes_c = 2
    elif inv_nodes >= 6 and inv_nodes <= 8:
        inv_nodes_c = 3
    elif inv_nodes >= 9 and inv_nodes <= 11:
        inv_nodes_c = 4
    elif inv_nodes >= 12 and inv_nodes <= 14:
        inv_nodes_c = 5
    elif inv_nodes >= 15 and inv_nodes <= 17:
        inv_nodes_c = 6
    elif inv_nodes >= 18 and inv_nodes <= 20:
        inv_nodes_c = 7
    elif inv_nodes >= 21 and inv_nodes <= 23:
        inv_nodes_c = 8
    elif inv_nodes >= 24 and inv_nodes <= 26:
        inv_nodes_c = 9
    elif inv_nodes >= 27 and inv_nodes <= 29:
        inv_nodes_c = 10
    elif inv_nodes >= 30 and inv_nodes <= 32:
        inv_nodes_c = 11
    elif inv_nodes >= 33 and inv_nodes <= 35:
        inv_nodes_c = 12
    elif inv_nodes >= 36 and inv_nodes <= 39:
        inv_nodes_c = 13

    node_caps = input("Houve penetração do tumor na capsula do linfonodo? (yes ou no): ")
    if(node_caps == "no"):
        node_caps_c = 1
    elif (node_caps == "yes"):
        node_caps_c = 2
    
    deg_malig = input("Qual grau de malignidade do tumor:\n 1 - menor \n 2 - médio \n 3 - maior\n numero:")
    deg_malig_c = int(deg_malig)

    breast = input("Mama em que o câncer pode ocorrer? esquerda ou direita: ")
    if(breast == "esquerda"):
        breast_c = 1
    elif(breast == "direita"):
        breast_c = 2

    breast_quad = input("Quadrante da mama afetado: ")
    if breast_quad == "esquerda-cima":
        breast_quad_c = 1
    elif breast_quad == "esquerda-baixo":
        breast_quad_c = 2
    elif breast_quad == "direita-cima":
        breast_quad_c = 3
    elif breast_quad == "direita-baixo":
        breast_quad_c = 4
    elif breast_quad == "centro":
        breast_quad_c = 5
     
    irradit = input("Histórico de radioterapia? (yes ou no): ")
    if(irradit == "no"):
        irradit_c = 1
    elif(irradit == "yes"):
        irradit_c = 2 


    paciente = np.array([[age_c, menopause_c,  tumor_size_c, inv_nodes_c, node_caps_c, deg_malig_c, breast_c, breast_quad_c,irradit_c]])
    print(paciente)
    return paciente

def train_mlp(paciente):
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
    # new_sample = np.array([[5, 2, 7, 2, 1, 3, 1, 2, 1]])
    # new_sample2 = np.array([[4, 3, 7, 1, 1, 2, 2, 4, 1]])

    # # Fazer previsões com o modelo
    # predicted_class = mlp.predict(new_sample)
    # predicted_class2 = mlp.predict(new_sample2)

    # if predicted_class == 1:
    #     print("Não recorrencia da doença após o tratamento para o exemplo 1")
    # else:
    #     print("Recorrencia da doença após o tratamento para o exemplo 1")


    predicted_class3 = mlp.predict(paciente)
    if predicted_class3 == 1:
        print("Não recorrencia da doença após o tratamento")
    else:
        print("Recorrencia da doença após o tratamento")
        

#paciente = code_data()
#paciente = np.array([[5, 2, 7, 2, 1, 3, 1, 2, 1]])
paciente = np.array([[6, 1, 8, 1, 1, 3, 2, 1, 2]])

train_mlp(paciente)