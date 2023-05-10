#Formação Cientista de Dados - Prof. Fernando Amaral
#Amostragem Sistemática

install.packages("TeachingSampling")
library("TeachingSampling")

#Amostra sistematica de tamanha 150, 10 grupos
amostra = S.SY(150, 10)
amostra

#Tamanho
dim(amostra)

#Usamos em iris
amostrairis = iris[amostra,]

#Verificamos
amostrairis

#Tamanho
dim(amostrairis)
