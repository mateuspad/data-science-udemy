#Formação Cientista de Dados - Prof. Fernando Amaral
#Codificação de Categorias

#install.packages('mltools')
#install.packages('data.table')
library(mltools)
library(data.table)

#Convertemos os dados Titanic para data frame
#Titanic
tit = as.data.frame(Titanic)
tit

#Data matrix é função nativa do R
#Label encoder de Class, Sex e Age
labenc = data.matrix(tit[,1:3])
labenc

#One hot encondig das mesmas colunas
hotenco  = one_hot(as.data.table( tit[,1:3]))
hotenco