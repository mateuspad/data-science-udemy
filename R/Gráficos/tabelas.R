#Formação Cientista de Dados - Prof. Fernando Amaral
#Tabelas

#install.packages("stargazer")
library(stargazer)

#Formato Latex
stargazer(iris)

#Html
stargazer(iris, type="html")

#Texto
stargazer(iris, type="text")

#Salva em Disco
stargazer(women, out="women.tex", summary=FALSE)