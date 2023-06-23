import mysql.connector
from mysql.connector import errorcode



def init_connection(host,user,password,database):
    try:
        db_connection = mysql.connector.connect(host=host, user=user, password=password, database=database)
        print("Database connection made!")
        cursor = db_connection.cursor()
        #Necessário trocar nome do banco de dados e parametros que tinham simbolo de hifen pra underscore ( - -> _)
        sql = ("SELECT id,age,menopause,tumor_size,inv_nodes,node_caps,deg_malig,breast,breast_quad,irradiat,class FROM cancer")
        cursor.execute(sql)
        for (id) in cursor:
            print(id)
        print("\n")
    except mysql.connector.Error as error:
        if error.errno == errorcode.ER_BAD_DB_ERROR:
            print("Database doesn't exist")
        elif error.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("User name or password is wrong")
        else:
            print(error)
    else:
        db_connection.close()

init_connection('localhost','root','190401','ag002')