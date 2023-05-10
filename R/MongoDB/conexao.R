#Formação Cientista de Dados - Prof. Fernando Amaral
#MongoDB

#install.packages("mongolite") 
library(mongolite)

#Conexão
conexao = mongo(collection = "posts", db = "dbmidias", url = "mongodb://localhost")

#Dados
dados = conexao$find()
class(dados)
dados

#Busca
dados = conexao$find('{"nome":"José"}')
dados

#Fecha a conexão
rm(conexao)
gc()