import mysql.connector

def conectar():

    conexao = mysql.connector.connect(
        host="127.0.0.1",
        port="3306",
        user="root",
        password="root",
        database="db_formativa"
        
    )

    #Criando o cursor

    cursor = conexao.cursor(dictionary=True)

    return conexao, cursor 