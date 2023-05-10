#Formação Cientista de Dados - Prof. Fernando Amaral

##Trabalhando com importação de arquivos

##install.packages("openxlsx")
library(openxlsx)

##Trabalhando com arquivos .CSV
x = read.csv(file.choose(), header = TRUE, sep = "," )
x
x = read.csv("Credit.csv", header = TRUE, sep = "," )
x

##Trabalhando com arquivos .XLSX
dados = read.xlsx("Credit.csv", sheet = 1)
dados