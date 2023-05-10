#Formação Cientista de Dados - Prof. Fernando Amaral
#PostgreSQL

#Pacote
#install.packages("RPostgreSQL")
library("RPostgreSQL")

#Conexao com banco de dados
conexao = dbConnect("PostgreSQL", dbname="AulaSQL", host="localhost", port=5432,
                    user="postgres", password=123456)

#Consulta SQL
#Executar com ctrl + shift + enter
sql = " SELECT QUANTIDADE, VALORTOTAL, PRODUTO, TOTAL FROM ITENSVENDA  IV
      INNER JOIN VENDAS V ON (IV.IDVENDA = V.IDVENDA) 
      INNER JOIN PRODUTOS P ON (IV.IDPRODUTO = P.IDPRODUTO)"
vendas = dbGetQuery(conexao, sql)

#Dados retornados
class(vendas)
dim(vendas)
head(vendas)

#Encerra a conexão
dbDisconnect(conexao)