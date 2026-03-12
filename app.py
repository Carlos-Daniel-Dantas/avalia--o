from flask import Flask, render_template, request, redirect
import mysql.connector
from model.descricao import recuperar_descricao, salvar_req, excluir_requisitos, mudar_requisitos

app = Flask(__name__)

@app.route("/")
def pagina_principal():

    return render_template("index.html")




@app.route("/requisitos")
def pagina_requisitos():

    requisitos = recuperar_descricao()

    return render_template("requisitos.html", requisitos = requisitos)




@app.route("/descricao/post", methods=["POST"])
def api_inseir_requisito():

    nome_descricao = request.form.get("input_descricao")
    nome_nivel = request.form.get("input_nivel")
    nome_valor = request.form.get("input_valor")

    if salvar_req( nome_descricao, nome_nivel, nome_valor):

        return redirect("/requisitos")
    else:
        return "Erro ao adicionar"
    



@app.route("/requisitos/delete/<codigo>")
def api_excluir_requisitos (codigo):
    excluir_requisitos(codigo)

    return redirect("/requisitos")




@app.route("/requisitos/ativar/<codigo>/<status>")
def mudar_status_requisitos (codigo, status):
    mudar_requisitos(codigo, status)
    return redirect("/admin")




if __name__ == "__main__":
    app.run(debug=True)

