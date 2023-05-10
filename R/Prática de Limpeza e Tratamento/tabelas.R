#Formação Cientista de Dados - Prof. Fernando Amaral

##install.packages('stargazer')
library('stargazer')

stargazer(iris)

stargazer(iris, type="html")

stargazer(iris, type="text")

stargazer(women, out="women.tex", summary=FALSE)
