from database.conexao import conectar 

def recuperar_descricao():
    
    #passo 1 e 2 já feito
    conexao, cursor = conectar()
    #if ativo == False:

    cursor.execute("SELECT cod_requisito, descricao, nivel, valor, situacao FROM tb_requisitos;")

    requisitos = cursor.fetchall()
    return requisitos

def salvar_req(descricao:str, nivel:str, valor:float):
    try:
        conexao, cursor = conectar()

        cursor.execute("""
                        
                        insert INTO tb_requisitos

                        (descricao, nivel, valor, situacao)
                        values 
                        (%s, %s, %s,"pendente");

                        """,

                        [ descricao, nivel, valor]
                    
                        )
            
        conexao.commit()
        conexao.close()
        return True
    except Exception as erro:
        print(erro)
        return False
    
def excluir_requisitos(cod_requisitos):
        """Pegara o codigo que é autoincrement e vai excluir a música apartir dele"""

        conexao, cursor = conectar()

        cursor.execute("""
                        
                        delete from tb_requisitos WHERE cod_requisito = %s;
                        
                        """,

                    [cod_requisitos]
                        )
            
        conexao.commit()
        conexao.close()


def mudar_requisitos(codigo:int, status:bool ):
        
        conexao, cursor = conectar()

        cursor.execute("""
                        
                        UPDATE tb_requisitos SET ativo = %s
                        WHERE codigo = %s
                        
                        """,

                        [status, codigo]

                        )
        
        conexao.commit()
        conexao.close()




