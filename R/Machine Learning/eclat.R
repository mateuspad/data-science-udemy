#Formação Cientista de Dados - Prof. Fernando Amaral
#Eclat

#install.packages("arules")
#install.packages("arulesViz")
library(arules)
library("arulesViz")

#Transações
transacoes <-read.transactions("transacoes.txt",format="basket",sep=",")
image(transacoes)

#Gera as regras
regras = eclat(transacoes, parameter = list(minlen=2))
inspect(regras)

#Visualização
plot(regras, method="graph", control=list(type="items"))